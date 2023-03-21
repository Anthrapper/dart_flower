import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:dart_flower/src/flower/flower_base.dart';
import 'package:dart_flower/src/generated/transport.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';

class FlowerClient implements FlowerClientBase {
  late ClientMessage _msg;
  late StreamController<ClientMessage> _messageStream;
  late Logger _logger;
  late StreamSubscription _grpcSubscription;

  /// Ip address of the FLOWER server
  final String ip;

  /// Port of the FLOWER server

  final int port;

  /// Function to get the weights of the model
  final Future<List<Uint8List>> Function() getWeights;

  /// Function to fit the model
  final Future<Map<String, dynamic>> Function(
    List<Uint8List> layers,
    int epochs,
  ) fit;

  /// Function to evaluate the model
  final Future<Map<String, dynamic>> Function(
    List<Uint8List> layers,
  ) evaluate;

  /// Certificate file path for TLS connection
  /// If not provided, insecure connection will be used
  final String? certPath;

  FlowerClient({
    required this.getWeights,
    required this.evaluate,
    required this.fit,
    required this.ip,
    required this.port,
    this.certPath,
  }) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      log(
        '${record.level.name} ${record.time} ${record.message}',
        name: 'FLOWER',
      );
    });
    _logger = Logger('FLOWER');
    _messageStream = StreamController<ClientMessage>();
    _msg = ClientMessage();
  }

  @override
  ClientMessage weightsAsProto(List<Uint8List> weights) {
    final Parameters p = Parameters()
      ..tensors.addAll(weights)
      ..tensorType = "ND";
    final ClientMessage_GetParametersRes res = ClientMessage_GetParametersRes()
      ..parameters = p;
    return ClientMessage()..getParametersRes = res;
  }

  @override
  ClientMessage fitResAsProto(List<Uint8List> weights, int trainingSize) {
    final Parameters p = Parameters()
      ..tensors.addAll(weights)
      ..tensorType = 'ND';
    final ClientMessage_FitRes res = ClientMessage_FitRes()
      ..parameters = p
      ..numExamples = Int64(trainingSize);
    return ClientMessage()..fitRes = res;
  }

  @override
  ClientMessage evaluateResAsProto(double accuracy, int testingSize) {
    final ClientMessage_EvaluateRes res = ClientMessage_EvaluateRes()
      ..loss = accuracy
      ..numExamples = Int64(testingSize);
    return ClientMessage()..evaluateRes = res;
  }

  @override
  Future<ClientMessage> handleEvaluate(ServerMessage message) async {
    _logger.info('Handling Evaluate request from the server');
    final List<Uint8List> layers = message.evaluateIns.parameters.tensors
        .map((tensor) => Uint8List.fromList(tensor))
        .toList();
    final Map<String, dynamic> evalRes = await evaluate(layers);

    final List<double> testStats = evalRes['testStats'] as List<double>;
    final double loss = testStats[0];
    final double accuracy = testStats[1];

    _logger.info("Test Accuracy after this round = $accuracy");
    final int testSize = evalRes['testSize'] as int;
    final ClientMessage res = evaluateResAsProto(loss, testSize);
    return res;
  }

  @override
  Future<ClientMessage> handleFit(ServerMessage message) async {
    _logger.info('Handling Fit request from the server.');

    final List<Uint8List> layers = message.fitIns.parameters.tensors
        .map((tensor) => Uint8List.fromList(tensor))
        .toList();

    final Int64 epochConfig =
        (message.fitIns.config['local_epochs']?.sint64 ?? 1) as Int64;
    _logger.info("Number of epochs: $epochConfig");

    final Map<String, dynamic> fitRes = await fit(layers, epochConfig.toInt());
    final List<Uint8List> newWeights = fitRes['weights'] as List<Uint8List>;
    final int trainingSize = fitRes['trainingSize'] as int;
    final ClientMessage res = fitResAsProto(newWeights, trainingSize);
    return res;
  }

  @override
  Future<ClientMessage> handleGetParameters(ServerMessage message) async {
    _logger.info('Handling GetParameters message from the server.');
    final List<Uint8List> weights = await getWeights();
    final ClientMessage res = weightsAsProto(weights);
    return res;
  }

  /// Connects to the FLOWER server and starts the federated learning process
  @override
  Future<void> runFederated() async {
    try {
      final channel = certPath != null
          ? ClientChannel(
              ip,
              port: port,
              options: ChannelOptions(
                credentials: ChannelCredentials.secure(
                  certificates: File(certPath!).readAsBytesSync(),
                ),
              ),
            )
          : ClientChannel(
              ip,
              port: port,
              options: const ChannelOptions(
                credentials: ChannelCredentials.insecure(),
              ),
            );
      final FlowerServiceClient stub = FlowerServiceClient(channel);

      _logger.info('Joining Flower server');
      _grpcSubscription = stub.join(_messageStream.stream).listen(
        (message) async {
          if (message.hasGetParametersIns()) {
            _msg = await handleGetParameters(message);
          } else if (message.hasFitIns()) {
            _msg = await handleFit(message);
          } else if (message.hasEvaluateIns()) {
            _msg = await handleEvaluate(message);
          } else if (message.hasReconnectIns()) {
            await channel.terminate();
            _logger.info('Connection Closed');
          }
          _sendMessage(_msg);
        },
      );
      await _grpcSubscription.asFuture();
    } on GrpcError catch (e) {
      _logger.severe(e.toString());
    }
  }

  void _sendMessage(ClientMessage message) {
    _messageStream.add(message);
  }

  /// Returns a stream of logs from the FLOWER client
  Stream<String> getLogStream() {
    return Logger.root.onRecord
        .where((event) => event.loggerName == 'FLOWER')
        .map((event) => '${event.level.name} ${event.time} ${event.message}');
  }
}

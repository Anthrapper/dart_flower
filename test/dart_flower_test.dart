import 'dart:typed_data';

import 'package:dart_flower/dart_flower.dart';
import 'package:fixnum/fixnum.dart';
import 'package:test/test.dart';

void main() {
  group('FlowerClient', () {
    late FlowerClient client;
    late List<Uint8List> mockWeights;

    setUp(() {
      mockWeights = [
        Uint8List.fromList([0, 1, 2]),
        Uint8List.fromList([3, 4, 5])
      ];

      client = FlowerClient(
        getWeights: () => Future.value(mockWeights),
        evaluate: (List<Uint8List> layers) => Future.value({
          'testStats': [0.5, 0.8],
          'testSize': 100
        }),
        fit: (List<Uint8List> layers, int epochs) => Future.value({
          'weights': mockWeights,
          'trainingSize': 200,
        }),
        ip: '192.168.1.1',
        port: 8080,
      );
    });

    test('weightsAsProto should return a ClientMessage', () {
      final result = client.weightsAsProto(mockWeights);
      expect(result.hasGetParametersRes(), true);
      expect(result.getParametersRes.parameters.tensorType, 'ND');
      expect(result.getParametersRes.parameters.tensors, mockWeights);
    });

    test('fitResAsProto should return a ClientMessage', () {
      final result = client.fitResAsProto(mockWeights, 100);
      expect(result.hasFitRes(), true);
      expect(result.fitRes.parameters.tensorType, 'ND');
      expect(result.fitRes.parameters.tensors, mockWeights);
      expect(result.fitRes.numExamples.toInt(), 100);
    });

    test('evaluateResAsProto should return a ClientMessage', () {
      final result = client.evaluateResAsProto(0.5, 50);
      expect(result.hasEvaluateRes(), true);
      expect(result.evaluateRes.loss, 0.5);
      expect(result.evaluateRes.numExamples.toInt(), 50);
    });

    test('handleGetParameters should return a ClientMessage', () async {
      final message = ServerMessage()..getParametersIns;
      final result = await client.handleGetParameters(message);
      expect(result.hasGetParametersRes(), true);
      expect(result.getParametersRes.parameters.tensors, mockWeights);
    });

    test('handleFit should return a ClientMessage', () async {
      final parameters = Parameters()..tensors.addAll(mockWeights);
      final config = {'local_epochs': Scalar(sint64: Int64(2))};
      final fitIns = ServerMessage_FitIns()
        ..parameters = parameters
        ..config.addAll(config);
      final message = ServerMessage()..fitIns = fitIns;
      final result = await client.handleFit(message);
      expect(result.hasFitRes(), true);
      expect(result.fitRes.parameters.tensors, mockWeights);
      expect(result.fitRes.numExamples.toInt(), 200);
    });

    test('handleEvaluate should return a ClientMessage', () async {
      final parameters = Parameters()..tensors.addAll(mockWeights);
      final evaluateIns = ServerMessage_EvaluateIns()..parameters = parameters;
      final message = ServerMessage()..evaluateIns = evaluateIns;
      final result = await client.handleEvaluate(message);
      expect(result.hasEvaluateRes(), true);
      expect(result.evaluateRes.loss, 0.5);
      expect(result.evaluateRes.numExamples.toInt(), 100);
    });
  });
}

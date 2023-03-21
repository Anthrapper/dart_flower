import 'dart:typed_data';

import 'package:dart_flower/src/generated/transport.pb.dart';

abstract class FlowerClientBase {
  ClientMessage weightsAsProto(List<Uint8List> weights);
  ClientMessage fitResAsProto(List<Uint8List> weights, int trainingSize);
  ClientMessage evaluateResAsProto(double accuracy, int testingSize);
  Future<void> runFederated();
  Future<ClientMessage> handleGetParameters(ServerMessage message);
  Future<ClientMessage> handleFit(ServerMessage message);
  Future<ClientMessage> handleEvaluate(ServerMessage message);
}

import 'dart:typed_data';

class FitResponse {
  final List<Uint8List> weights;
  final int trainingSize;

  FitResponse({
    required this.weights,
    required this.trainingSize,
  });
}

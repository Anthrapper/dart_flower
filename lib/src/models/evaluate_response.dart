class EvaluateResponse {
  final double loss;
  final double accuracy;
  final int testSize;

  EvaluateResponse({
    required this.loss,
    required this.accuracy,
    required this.testSize,
  });
}

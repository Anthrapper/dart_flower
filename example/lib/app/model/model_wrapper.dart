import 'dart:typed_data';

abstract class ModelWrapper {
  Future<List<Uint8List>> getParameters();

  Future<void> updateParameters(List<Uint8List> weights);

  Future<void> train(int epochs);

  Future<void> enableTraining(Function(int epoch, double loss) callback);

  Future<void> disableTraining();

  Future<int> getSizeTraining();

  Future<int> getSizeTesting();

  Future<List<dynamic>> calculateTestStatistics();

  Future<void> init(List<String> classes);
}

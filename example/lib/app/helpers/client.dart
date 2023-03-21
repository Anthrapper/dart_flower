import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flower_flutter/app/helpers/helper_functions.dart';
import 'package:flower_flutter/app/helpers/logs.dart';
import 'package:flower_flutter/app/model/transfer_learning_model.dart';

class MyClient {
  final TransferLearningModelWrapper tlModel = TransferLearningModelWrapper();
  Completer<void> isTraining = Completer<void>();
  int localEpochs = 1;

  Future<void> initTf(List<String> classes) async {
    await tlModel.init(classes);
  }

  Future<List<Uint8List>> getWeights() async {
    return tlModel.getParameters();
  }

  Future<Map<String, dynamic>> fit(List<Uint8List> weights, int epochs) async {
    localEpochs = epochs;
    await tlModel.updateParameters(weights);
    isTraining = Completer<void>();
    info("Weights updated", name: "TF");
    await tlModel.train(localEpochs);
    info('Training enabled. Local Epochs = $localEpochs', name: "TF");
    await tlModel.enableTraining(
      (epoch, loss) async => setLastLoss(epoch, loss),
    );
    await isTraining.future;
    final List<Uint8List> newWeights = await getWeights();
    final int trainingSize = await tlModel.getSizeTraining();
    info("trainingSize = $trainingSize", name: "TF");
    return {'weights': newWeights, 'trainingSize': trainingSize};
  }

  void setLastLoss(int epoch, double newLoss) {
    if (epoch == localEpochs - 1) {
      info("Training finished after epoch = $epoch", name: "TF");
      tlModel.disableTraining();
      isTraining.complete();
    }
  }

  Future<Map<String, dynamic>> evaluate(List<Uint8List> weights) async {
    await tlModel.updateParameters(weights);
    await tlModel.disableTraining();
    return {
      'testStats': await tlModel.calculateTestStatistics(),
      'testSize': await tlModel.getSizeTesting()
    };
  }

  Future<void> loadCifarData(int id, String path) async {
    final data = await loadData(id, path);
    final List<String> trainLines = data[0];
    final List<String> testLines = data[1];
    info(
      "Found ${testLines.length} testing & ${trainLines.length} training samples",
    );
    final futures = <Future>[];
    for (final line in trainLines) {
      futures.add(addSample('$path/$line', isTraining: true));
    }

    for (final line in testLines) {
      futures.add(addSample('$path/$line', isTraining: false));
    }
    await Future.wait(futures);
    info(
      "Loaded ${testLines.length} testing & ${trainLines.length} training samples",
      name: 'TF',
    );
  }

  Future<void> predictImg(String path) async {
    final file = File(path);
    final bytes = await file.readAsBytes();

    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    final bitmap = frame.image;

    // get rgb equivalent and class
    final rgbImage = await prepareImage(bitmap, 32);
    await tlModel.predict(rgbImage);
  }

  Future<void> addSample(String photoPath, {required bool isTraining}) async {
    final file = File(photoPath);
    final bytes = await file.readAsBytes();

    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    final bitmap = frame.image;

    final sampleClass = getClass(photoPath);
    // get rgb equivalent and class
    final rgbImage = await prepareImage(bitmap, 32);

    // add to the list.
    try {
      await tlModel.addSample(rgbImage, sampleClass, isTraining: isTraining);
    } on Exception catch (e) {
      throw Exception("Failed to add sample to model: $e");
    }
  }

  String getClass(String path) {
    final String className =
        path.split('/').elementAt(path.split('/').length - 2);
    return className;
  }
}

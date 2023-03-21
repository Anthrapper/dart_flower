import 'package:flower_flutter/app/helpers/logs.dart';
import 'package:flower_flutter/app/model/model_wrapper.dart';
import 'package:flutter/services.dart';

class TransferLearningModelWrapper extends ModelWrapper {
  final MethodChannel tf = const MethodChannel('tl_wrapper');

  @override
  Future<List<Uint8List>> getParameters() async {
    final List<dynamic> parameters =
        await tf.invokeMethod('getParameters') as List<dynamic>;
    final List<Uint8List> weights =
        parameters.map((x) => x).cast<Uint8List>().toList();
    info('Got weights: ${weights.length} layers', name: "TF");
    return weights;
  }

  @override
  Future<void> updateParameters(List<Uint8List> weights) async {
    await tf.invokeMethod('updateParameters', {"weight": weights});
  }

  @override
  Future<void> train(int epochs) async {
    await tf.invokeMethod('train', {"epochs": epochs});
  }

  @override
  Future<void> enableTraining(
    void Function(
      int epoch,
      double loss,
    )
        callback,
  ) async {
    tf.setMethodCallHandler((call) async {
      if (call.method == 'onLoss') {
        final args = call.arguments as Map<Object?, Object?>;
        info(args.toString(), name: "TF");
        final int epoch = args['step']! as int;
        final double loss = args['loss']! as double;
        callback(epoch, loss);
      }
    });
    await tf.invokeMethod('enableTraining');
  }

  @override
  Future<void> disableTraining() async {
    await tf.invokeMethod('disableTraining');
  }

  @override
  Future<int> getSizeTraining() async {
    return (await tf.invokeMethod('getSizeTraining')) as int? ?? 0;
  }

  @override
  Future<int> getSizeTesting() async {
    return (await tf.invokeMethod('getSizeTesting')) as int? ?? 0;
  }

  @override
  Future<List<double>> calculateTestStatistics() async {
    final List<Object?> result =
        await tf.invokeMethod('calculateTestStatistics') as List<Object?>;
    info("Test statistics: $result", name: "TF");

    final List<double> res = result.map((x) => x! as double).toList();
    return res;
  }

  Future predict(List<double> image) async {
    try {
      final predictRes = await tf.invokeMethod('predict', {
        "image": image,
      });
      info('Predicted: $predictRes', name: "TF");
    } on Exception catch (e) {
      throw Exception('Failed to predict: $e');
    }
  }

  Future<void> addSample(
    List<double> rgbImage,
    String sampleClass, {
    required bool isTraining,
  }) async {
    try {
      await tf.invokeMethod(
        'addSample',
        {
          "rgbImage": rgbImage,
          "sampleClass": sampleClass,
          "isTraining": isTraining
        },
      );
    } on Exception catch (e) {
      throw Exception('Failed to add sample: $e');
    }
  }

  @override
  Future<void> init(List<String> classes) async {
    await tf.invokeMethod('init', {"classes": classes});
  }
}

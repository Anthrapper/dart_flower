import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:flower_flutter/app/helpers/logs.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

Future<void> downloadAndUnzip(
  String url,
  String filename,
  String directoryPath,
) async {
  final Dio dio = Dio();

  await dio.download(
    url,
    "$directoryPath/$filename",
  );
  await unzipFile("$directoryPath/$filename", "$directoryPath/");
  info('Downloaded and Unzipped');
}

Future<void> unzipFile(
  String zipFilePath,
  String destinationDir,
) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(
    _unzipInIsolate,
    [zipFilePath, destinationDir, receivePort.sendPort],
  );
  await receivePort.first;
}

void _unzipInIsolate(List<dynamic> args) {
  final zipFilePath = args[0].toString();
  final destinationDir = args[1];
  final sendPort = args[2] as SendPort;
  final zipFile = File(zipFilePath);
  final bytes = zipFile.readAsBytesSync();
  final archive = ZipDecoder().decodeBytes(bytes);
  for (final file in archive) {
    final filename = '$destinationDir/${file.name}';
    if (file.isFile) {
      final data = file.content as List<int>;
      final outFile = File(filename)..createSync(recursive: true);
      outFile.writeAsBytesSync(data);
    } else {
      Directory(filename).createSync(recursive: true);
    }
  }
  sendPort.send(null);
}

Future<List<List<String>>> loadData(
  int deviceId,
  String path,
) async {
  final trainReader = await rootBundle
      .loadString('assets/data/partition_${deviceId - 1}_train.txt');
  final trainLines =
      trainReader.split('\n').where((line) => line.isNotEmpty).toList();

  final testReader = await rootBundle
      .loadString('assets/data/partition_${deviceId - 1}_test.txt');
  final testLines =
      testReader.split('\n').where((line) => line.isNotEmpty).toList();

  return [trainLines, testLines];
}

Future<Float32List> prepareImage(ui.Image image, int imageSize) async {
  final modelImageSize = imageSize;
  final normalizedRgb = Float32List(modelImageSize * modelImageSize * 3);
  int nextIdx = 0;
  final imageByteData = await image.toByteData();

  for (int y = 0; y < modelImageSize; y++) {
    for (int x = 0; x < modelImageSize; x++) {
      final pixelIndex = (y * modelImageSize + x) * 4;
      final r = imageByteData!.getUint8(pixelIndex) * (1 / 255.0);
      final g = imageByteData.getUint8(pixelIndex + 1) * (1 / 255.0);
      final b = imageByteData.getUint8(pixelIndex + 2) * (1 / 255.0);

      normalizedRgb[nextIdx++] = r;
      normalizedRgb[nextIdx++] = g;
      normalizedRgb[nextIdx++] = b;
    }
  }
  return normalizedRgb;
}

Future<XFile?> pickImages() async {
  try {
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    return img;
  } catch (e) {
    error('Error picking images: $e');
    return null;
  }
}

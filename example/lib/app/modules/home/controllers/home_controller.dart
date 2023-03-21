// ignore_for_file: avoid_void_async

import 'dart:async';

import 'package:dart_flower/dart_flower.dart';
import 'package:flower_flutter/app/helpers/client.dart';
import 'package:flower_flutter/app/helpers/constants.dart';
import 'package:flower_flutter/app/helpers/helper_functions.dart';
import 'package:flower_flutter/app/helpers/logs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController {
  RxBool isDownloaded = false.obs;
  RxBool isFederated = false.obs;
  RxBool isRunning = false.obs;
  RxBool isDatasetLoaded = false.obs;

  RxBool isDownloading = false.obs;
  RxBool isLoading = false.obs;

  late TextEditingController ip;
  late TextEditingController port;
  late TextEditingController deviceId;
  late MyClient client;
  late FlowerClient flowerClient;
  RxString displayLog = ''.obs;
  @override
  void onInit() {
    super.onInit();

    ip = TextEditingController();
    port = TextEditingController();
    deviceId = TextEditingController();
  }

  @override
  void onReady() async {
    await _requestWritePermission();
    client = MyClient();
    await client.initTf(MyConstants.classes);
    super.onReady();
  }

  @override
  void onClose() {
    ip.dispose();
    port.dispose();
    deviceId.dispose();
    super.onClose();
  }

  Future _requestWritePermission() async {
    await Permission.storage.request();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<void> downloadData() async {
    final String path = await _localPath;

    isDownloading.value = true;
    await downloadAndUnzip(
      MyConstants.url,
      MyConstants.filename,
      path,
    ).onError((e, stackTrace) {
      error(e.toString());
    });
    isDownloading.value = false;
    isDownloaded.value = true;
  }

  void clearLogs() {
    displayLog.value = '';
  }

  Future<void> grpcConnect() async {
    if (ip.text.isEmpty || port.text.isEmpty) {
      Get.rawSnackbar(title: 'Error', message: 'IP or Port is empty');
      return;
    } else if (isDatasetLoaded.value == false) {
      Get.rawSnackbar(title: 'Error', message: 'Dataset is not loaded');
      return;
    }
    if (isRunning.value) {
      Get.rawSnackbar(title: 'Warning', message: 'Already running');
      return;
    }
    isRunning.value = true;
    flowerClient = FlowerClient(
      getWeights: client.getWeights,
      evaluate: client.evaluate,
      fit: client.fit,
      ip: ip.text,
      port: int.parse(port.text),
    );

    flowerClient.getLogStream().listen((event) {
      displayLog.value += '$event\n \n ';
    });

    await flowerClient.runFederated();
    isFederated.value = true;
    isRunning.value = false;
  }

  Future<void> loadData() async {
    final String path = await _localPath;

    if (deviceId.text.isEmpty) {
      Get.rawSnackbar(title: 'Error', message: 'Device ID is empty');
      return;
    } else if (isDownloaded.value == false) {
      Get.rawSnackbar(
        title: 'Error',
        message: 'Dataset is not downloaded',
      );
      return;
    }

    isLoading.value = true;
    await client
        .loadCifarData(int.parse(deviceId.text), path)
        .onError((e, stackTrace) {
      Get.rawSnackbar(title: 'Error', message: error.toString());
      error(e.toString(), name: "TF");
    });

    isLoading.value = false;
    isDatasetLoaded.value = true;
  }

  Future<void> predict() async {
    final XFile? img = await pickImages();
    if (img == null) {
      return;
    } else {
      info(img.path);
      await client.predictImg(img.path);
    }
  }
}

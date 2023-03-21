import 'dart:developer';
import 'package:flower_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void info(String msg, {String? name}) {
  final DateTime now = DateTime.now();
  final String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  final String formattedTime = DateFormat('HH:mm:ss.SSS').format(now);
  final String logMessage = "INFO $formattedDate $formattedTime $msg";
  final String logName = name ?? 'CLIENT';
  log(logMessage, name: logName);
  Get.find<HomeController>().displayLog.value += '[$logName] $logMessage\n \n ';
}

void error(String msg, {String? name}) {
  final DateTime now = DateTime.now();
  final String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  final String formattedTime = DateFormat('HH:mm:ss.SSS').format(now);
  final String logMessage = "ERROR $formattedDate $formattedTime $msg";
  final String logName = name ?? 'CLIENT';
  log(logMessage, name: logName);
  Get.find<HomeController>().displayLog.value += '[$logName] $logMessage\n \n ';
}

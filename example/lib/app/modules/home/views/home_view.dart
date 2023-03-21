import 'package:flower_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:flower_flutter/app/modules/home/views/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30,
          top: 60,
          bottom: 10,
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 180,
                    child: TextField(
                      controller: controller.ip,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'IP',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.port,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Port',
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: controller.deviceId,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Device ID',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Obx(
                () => (controller.isDownloading.value ||
                        controller.isLoading.value)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Row(
                        children: [
                          MyButton(
                            onPressed: () async {
                              await controller.downloadData();
                            },
                            text: 'Download Dataset',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          MyButton(
                            onPressed: () async {
                              await controller.loadData();
                            },
                            text: 'Load Dataset',
                          ),
                        ],
                      ),
              ),
              MyButton(
                onPressed: () async {
                  await controller.grpcConnect();
                },
                text: 'Run Federated',
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 280,
                width: double.infinity,
                color: Colors.teal,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 5,
                  top: 15,
                  bottom: 15,
                ),
                child: SingleChildScrollView(
                  child: Obx(
                    () => Text(
                      controller.displayLog.value.isEmpty
                          ? 'No Logs'
                          : controller.displayLog.value,
                      style: const TextStyle(
                        fontSize: 11,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  controller.clearLogs();
                },
                child: const Icon(Icons.cleaning_services_sharp),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => controller.isFederated.value
                    ? MyButton(
                        onPressed: () async {
                          await controller.predict();
                        },
                        text: 'Predict',
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

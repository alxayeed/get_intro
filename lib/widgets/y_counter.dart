import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

class YCounter extends StatelessWidget {
  const YCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              tapController.increaseY();
            },
            icon: const Icon(Icons.add)),
        Obx(() => Text(
              "Y= ${tapController.y}",
              style: const TextStyle(fontSize: 64),
            )),
        IconButton(
            onPressed: () {
              tapController.decreaseY();
            },
            icon: const Icon(Icons.remove)),
      ],
    );
  }
}

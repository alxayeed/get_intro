import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/tap_controller.dart';

class XCounter extends StatelessWidget {
  const XCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              tapController.increaseX();
            },
            icon: const Icon(Icons.add, size: 36, color: Colors.blue,)),
        GetBuilder<TapController>(builder: (_) {
          return Text(
            "X= ${tapController.x}",
            style: const TextStyle(fontSize: 64),
          );
        }),
        IconButton(
            onPressed: () {
              tapController.decreaseX();
            },
            icon: const Icon(Icons.remove, size: 36, color: Colors.red,)),
      ],
    );
  }
}


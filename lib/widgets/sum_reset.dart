import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/tap_controller.dart';

class SumReset extends StatelessWidget {
  const SumReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              tapController.sumXY();
              Get.snackbar(
                "The sum of ${tapController.x} and ${tapController.y} is",
                tapController.z.toString(),
                icon: const Icon(Icons.calculate, color: Colors.white),
                snackPosition: SnackPosition.TOP,
                backgroundColor: Colors.grey[300],
              );
            },
            child: const Text(
              'SUM',
              style: TextStyle(fontSize: 48),
            )),
        TextButton(
            onPressed: () {
              tapController.resetX();
              tapController.resetY();
            },
            child: const Text(
              'RESET',
              style: TextStyle(fontSize: 48, color: Colors.red),
            )),
      ],
    );
  }
}

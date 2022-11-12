import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/list_controller.dart';
import 'package:getx_intro/controllers/tap_controller.dart';

class SumReset extends StatelessWidget {
  const SumReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();
    ListController listController = Get.find();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              tapController.sumXY();
              listController.setList(tapController.z.value);
            },
            child: const Text(
              'SUM',
              style: TextStyle(fontSize: 48),
            )),
        TextButton(
            onPressed: () {
              tapController.resetX();
              tapController.resetY();
              listController.resetList();
            },
            child: const Text(
              'RESET',
              style: TextStyle(fontSize: 48, color: Colors.red),
            )),
      ],
    );
  }
}

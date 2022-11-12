import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      height: 100,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueAccent),
      child: Obx(() => Center(
        child: Text(
          tapController.z.string,
          style: const TextStyle(fontSize: 64, color: Colors.white),
        ),
      )),
    );
  }
}

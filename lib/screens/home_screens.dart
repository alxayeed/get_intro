import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/tap_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.put(TapController());

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Text(
                tapController.x.toString(),
                style: const TextStyle(fontSize: 36),
              );
            }),
            GestureDetector(
              onTap: () {
                tapController.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20.0),
                width: double.maxFinite,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple),
                child: const Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint("Tap");
              },
              child: Container(
                margin: const EdgeInsets.all(20.0),
                width: double.maxFinite,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple),
                child: const Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint("Tap");
              },
              child: Container(
                margin: const EdgeInsets.all(20.0),
                width: double.maxFinite,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple),
                child: const Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

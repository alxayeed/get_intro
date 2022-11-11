import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/tap_controller.dart';
import 'package:getx_intro/screens/home_screens.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
          title: const Text("Third Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Text(
                tapController.x.toString(),
                style: const TextStyle(fontSize: 64),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      tapController.increaseX();
                    },
                    icon: const Icon(Icons.add, size: 64.0)),
                IconButton(
                    onPressed: () {
                      tapController.resetX();
                    },
                    icon: const Icon(Icons.refresh, size: 64.0)),
                IconButton(
                    onPressed: () {
                      tapController.decreaseX();
                    },
                    icon: const Icon(Icons.remove, size: 64.0)),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const HomeScreen());
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
                    "Home Screen",
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

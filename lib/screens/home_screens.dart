import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/tap_controller.dart';
import 'package:getx_intro/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.put(TapController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
          title: const Text("Home Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Get.to(() => const SecondScreen());
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
                    "Second Screen",
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

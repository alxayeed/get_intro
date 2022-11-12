import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/controllers/list_controller.dart';
import 'package:getx_intro/controllers/tap_controller.dart';
import 'package:getx_intro/screens/second_screen.dart';
import 'package:getx_intro/widgets/sum_reset.dart';
import 'package:getx_intro/widgets/x_counter.dart';
import 'package:getx_intro/widgets/y_counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Method 1: initialize controller
    // Get.put(TapController());
    // Get.put(ListController());

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
            const XCounter(),
            const YCounter(),
            const SumReset(),
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

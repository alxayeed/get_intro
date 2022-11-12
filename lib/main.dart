import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/helper/init_dependency.dart';
import 'package:getx_intro/screens/home_screens.dart';
import 'helper/init_controllers.dart' as di;

void main() async {
  // Method 2: initialize controller by helper method
  // it works as expected without async and ensureInitialized()
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.initControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Method 3: initialize controller by binding class
      initialBinding: InitDependencies(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}


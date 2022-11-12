import 'package:get/get.dart';

import '../controllers/list_controller.dart';
import '../controllers/tap_controller.dart';

class InitDependencies extends Bindings{
  @override
  void dependencies() {
    Get.put(TapController());
    Get.put(ListController());
  }

}
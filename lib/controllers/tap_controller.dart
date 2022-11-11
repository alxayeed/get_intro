import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;
  RxInt _y = 0.obs;

  int get x=> _x;
  RxInt get y=> _y;

  void increaseX(){
    _x++;
    update();
  }

  void increaseY(){
    _y++;
    update();
  }

  void decreaseX(){
    _x--;
    update();
  }

  void decreaseY(){
    _y--;
    update();
  }

  void resetX(){
    _x = 0;
    update();
  }

  // void resetY(){
  //   _y = 1.obs;
  //   print(_y);
  //   update();
  // }
}
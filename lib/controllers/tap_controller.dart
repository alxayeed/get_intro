import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;
  RxInt _y = 0.obs;

  int get x=> _x;
  RxInt get y=> _y;

  RxInt _z = 0.obs;
  RxInt get z=> _z;

  void increaseX(){
    _x++;
    update();
  }

  void increaseY(){
    _y.value++;
  }

  void decreaseX(){
    _x--;
    update();
  }

  void decreaseY(){
    _y.value--;
  }

  void resetX(){
    _x = 0;
    update();
  }

  void resetY(){
    _y.value = 0;
  }

void sumXY(){
  _z.value = _x  + _y.value;
}
}
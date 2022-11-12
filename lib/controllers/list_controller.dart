import 'package:get/get.dart';

class ListController extends GetxController{
  RxList _list = [].obs;
  RxList get list => _list;

  void setList(int x){
    _list.add(x);
    print(_list.value);
  }

  void resetList(){
    _list.clear();
  }
}
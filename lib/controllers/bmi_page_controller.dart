import 'package:get/state_manager.dart';

import '../data/enum/app_enum.dart';

class BmiPageController  extends GetxController{
   Rx<Gender> gender = Gender.None.obs;

    RxInt _height = 170.obs;
  RxInt _weight = 60.obs;
  RxInt _age = 23.obs;

  RxInt get getHeight => _height;
  set setHeight (int value) {
    _height.value= value;
  }
  RxInt get getWeight => _weight;
  set setWeight (int value) {
    _height.value= value;
  }
  RxInt get getAge => _age;
  set setAge (int value) {
    _height.value= value;
  }

  void incrementWeight (){
    _weight ++;
  }
  void decrementWeight (){
    _weight --;
  }
  void incrementHeight (){
    
    _height ++ ;
  }
  void decrementHeight (){
    _height --;
  }
  void incrementAge (){
    _age ++;
  }
  void decrementAge (){
    _age --;
  }
}
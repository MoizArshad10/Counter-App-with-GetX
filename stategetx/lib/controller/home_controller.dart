import 'package:get/get.dart';

class HomeController extends GetxController{
  var counter = 0.obs;

  add(){
    counter ++;
    update();
  }
  
  dec(){
    // ignore: unrelated_type_equality_checks
    if (counter == 0) {
      // ignore: unrelated_type_equality_checks
      counter ==0;
      update();
    }
    else{
      counter --;
      update();
    }
  }
}
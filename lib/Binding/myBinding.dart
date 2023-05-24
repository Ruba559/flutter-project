
import 'package:flutter_application_1/core/class/curd.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Curd()) ; 
  }
}

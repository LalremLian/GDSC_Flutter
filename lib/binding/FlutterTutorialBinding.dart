import 'package:dummy/crash_course_flutter/controller/listviewController.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class FlutterTutorialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ListviewController());
  }
}
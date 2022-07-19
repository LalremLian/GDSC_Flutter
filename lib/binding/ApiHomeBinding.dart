import 'package:dummy/API/controller/ApiController.dart';
import 'package:get/get.dart';

class ApiHomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiController());
  }
}
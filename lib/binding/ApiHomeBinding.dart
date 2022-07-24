
import 'package:get/get.dart';

import '../API/controllers/ApiController.dart';

class ApiHomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiController());
  }
}
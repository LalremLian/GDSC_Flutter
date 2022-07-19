import 'package:get/get.dart';

import '../model/post_model.dart';
import '../service/remote_services.dart';

class ApiController extends GetxController{

  var isLoaded = false;
  var postList  = <Post>[].obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async{
    var posts = await RemoteService().getPosts();
    if(posts != null)
    {
      postList.value = posts;
      isLoaded = true;
    }
  }
}
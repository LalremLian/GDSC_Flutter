import 'package:dummy/API/view/api_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/ApiController.dart';
import '../widgets/ShimeringWidget.dart';

class ApiHome extends StatefulWidget {
  ApiHome({Key? key}) : super(key: key);

  @override
  State<ApiHome> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {

  //........................................................Declaring Controller
  final apiController = Get.put(ApiController());

  @override
  void initState()
  {
    super.initState();
    apiController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Integration'),
      ),
      body: Obx(
          () => Visibility(
            //...................................................if isLoaded is true
            visible: apiController.isLoaded,
            child: ListView.builder(
              itemCount: apiController.postList.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.grey[50],
                  elevation: 3,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ApiProfile(post: apiController.postList[index],)
                            )
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Hero(
                              tag: apiController.postList[index].id,
                              child: Image.network("https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png",
                                fit: BoxFit.cover,),
                            ),
                            /*decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,

                          ),*/
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Id: ' + apiController.postList[index].id.toString() + '\n' + apiController.postList[index].title,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  apiController.postList[index].body,
                                  style: const TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),


            replacement: const ShimmerWidget(),
          ),
      )
    );
  }
}



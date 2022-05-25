import 'package:dummy/API/model/post_model.dart';
import 'package:dummy/API/service/remote_services.dart';
import 'package:dummy/API/view/api_profile.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ApiHome extends StatefulWidget {
  const ApiHome({Key? key}) : super(key: key);

  @override
  State<ApiHome> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {

  //...................................................................Variables
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState()
  {
    super.initState();

    //................................................................fetch data
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Integration'),
      ),
      body: Visibility(
        //...................................................if isLoaded is true
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
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
                              builder: (context) => ApiProfile(post: posts![index],)
                          )
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Hero(
                            tag: posts![index].id,
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
                              Text('Id: ' + posts![index].id.toString() + '\n' + posts![index].title,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                posts![index].body,
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
        replacement: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(child:
                Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: ListView.builder(
                        itemBuilder: (_, __) => Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  color: Colors.white,
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: double.infinity,
                                        height: 12.0,
                                        color: Colors.white,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 2.0),
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 70.0,
                                            height: 12.0,
                                            color: Colors.white,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 8.0),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 180.0,
                                            height: 12.0,
                                            color: Colors.white,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 8.0),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 12.0,
                                        color: Colors.white,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 2.0),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 12.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      itemCount: 8,
                    ),
                ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }

  //......................................................................Method
  void getData() async{
    posts = await RemoteService().getPosts();
    if(posts != null)
      {
        setState(() {
          isLoaded = true;
        });
      }
  }
}

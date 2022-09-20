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
  void initState() {
    super.initState();

    // apiController.getData();
    apiController.firstLoad(apiController.page, apiController.limit);
    apiController.controller = ScrollController()..addListener(apiController.loadMore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API Integration'),
        ),
        body: Obx(
              () => Visibility(
                //...............................................if isLoaded is true
                visible: apiController.isLoaded,
                child: ListView.builder(
                  controller: apiController.controller,
                  itemCount: apiController.postList.length,
                  itemBuilder: (context, index) {

                if (apiController.isLoadMoreRunning == true) {
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 40),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }

                    if (apiController.hasNextPage == false) {
                      Container(
                        padding: const EdgeInsets.only(top: 30, bottom: 40),
                        color: Colors.amber,
                        child: const Center(
                          child: Text('You have fetched all of the content'),
                        ),
                      );
                    }


                    return PostCard(
                      apiController: apiController,
                      index: index,
                    );

                  },
                ),




                replacement: const ShimmerWidget(),
              ),

            ),

        );
  }
}

class PostCard extends StatelessWidget {
  var index;

  PostCard({
    Key? key,
    required this.apiController,
    required this.index,
  }) : super(key: key);

  final ApiController apiController;

  @override
  Widget build(BuildContext context) {
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
                    builder: (context) => ApiProfile(
                          post: apiController.postList[index],
                        )));
          },
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Hero(
                  tag: apiController.postList[index].id,
                  child: Image.network(
                    "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png",
                    fit: BoxFit.cover,
                  ),
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
                    Text(
                      'Id: ' +
                          apiController.postList[index].id.toString() +
                          '\n' +
                          apiController.postList[index].title,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
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
  }
}





/*class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  int _page = 0;

  final int _limit = 20;

  bool _isFirstLoadRunning = false;
  bool _hasNextPage = true;

  bool _isLoadMoreRunning = false;

  List _posts = [];

  void _loadMore() async {
    if (_hasNextPage == true &&
        _isFirstLoadRunning == false &&
        _isLoadMoreRunning == false &&
        _controller.position.extentAfter < 300
    ) {
      setState(() {
        _isLoadMoreRunning = true; // Display a progress indicator at the bottom
      });

      _page += 1; // Increase _page by 1

      try {
        final res =
        await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));

        final List fetchedPosts = json.decode(res.body);
        if (fetchedPosts.isNotEmpty) {
          setState(() {
            _posts.addAll(fetchedPosts);
          });
        } else {

          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (err) {
        if (kDebugMode) {
          print('Something went wrong!');
        }
      }


      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }

  void _firstLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });

    try {
      final res =
      await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));
      setState(() {
        _posts = json.decode(res.body);
      });
    } catch (err) {
      if (kDebugMode) {
        print('Something went wrong');
      }
    }

    setState(() {
      _isFirstLoadRunning = false;
    });
  }

  late ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _firstLoad();
    _controller = ScrollController()..addListener(_loadMore);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your news', style: TextStyle(color: Colors.white),),
        ),
        body:_isFirstLoadRunning?
        const Center(
          child: CircularProgressIndicator(),
        ):
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                controller: _controller,
                itemBuilder: (_, index) => Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 10),
                  child: ListTile(
                    title: Text(_posts[index]['title']),
                    subtitle: Text(_posts[index]['body']),
                  ),
                ),
              ),
            ),
            if (_isLoadMoreRunning == true)
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 40),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),

            if (_hasNextPage == false)
              Container(
                padding: const EdgeInsets.only(top: 30, bottom: 40),
                color: Colors.amber,
                child: const Center(
                  child: Text('You have fetched all of the content'),
                ),
              ),
          ],
        )
    );
  }
}*/


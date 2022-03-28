import 'package:dummy/API/model/post_model.dart';
import 'package:flutter/material.dart';

class ApiProfile extends StatefulWidget {

  final Post post;
  ApiProfile({required this.post});

  @override
  State<ApiProfile> createState() => _ApiProfileState();
}

class _ApiProfileState extends State<ApiProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          color: Colors.grey[50],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //...........................................................Image
              Padding(
                padding: const EdgeInsets.all(20),
                child: Hero(
                  tag: widget.post.id,
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.network("https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png",
                      fit: BoxFit.cover,),
                  ),
                ),
              ),
              //............................................................Text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ' + widget.post.id.toString() + '\n' + widget.post.title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                    ),
                    //......................................................Text
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        widget.post.body,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        softWrap: true,
                      ),
                    ),],
                ),
              ),],
          ),
        ),
      ),
    );
  }
}

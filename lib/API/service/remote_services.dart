import 'package:dummy/API/model/post_model.dart';
import 'package:dummy/API/model/response_model.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }

  Future<String?> getLoginData(String username, String password) async {

    var response = await http.post(
        Uri.http('eservicetraining.bbs.gov.bd', 'api/login'),
        body: {'username': username, 'password': password});
    if (response.statusCode == 200) {
      var json = response.body;

      print(json);
      return json;
    }
    return null;


/*    var data = response.body;
    print(data);*//*
    return null;*/


/*    var response;
    return response = await http.post(
        Uri.http('eservicetraining.bbs.gov.bd', 'api/login'),
        body: {'username': username, 'password': password});*/
  }
}

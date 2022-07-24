import 'package:dummy/API/controllers/ApiController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/more_page.dart';

class ApiPostMethod extends StatefulWidget {
  const ApiPostMethod({Key? key}) : super(key: key);

  @override
  State<ApiPostMethod> createState() => _ApiPostMethodState();
}

  var apiController = ApiController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

class _ApiPostMethodState extends State<ApiPostMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POST Method'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.account_box_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              //.................................................MoreOption Button
              padding: const EdgeInsets.only(top: 40.0),
              child: OutlinedButton.icon(
                onPressed: () async{
                  apiController.getLogin(
                    usernameController.text,
                    passwordController.text
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(50, 50),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  //primary: Colors.blueGrey,
                  onPrimary: Colors.black87,
                  //elevation: 8,
                  //shadowColor: Colors.black87,
                  //side: const BorderSide(color: Colors.black87, width: 4),
                  shape: const StadiumBorder(),
                ),
                icon: const Icon(Icons.login),
                label: const Text('LOGIN'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

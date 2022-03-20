import 'package:flutter/material.dart';

class GDSC_Home extends StatelessWidget {
  const GDSC_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                  "https://media.istockphoto.com/photos/big-ben-and-whitehall-from-trafalgar-square-london-picture-id503564070?b=1&k=20&m=503564070&s=170667a&w=0&h=TpfcfJnpBV6Nz0LAQWAVe-JEa1fqe0jF3IqaX_CaRGs="),
              const Padding(
                padding: EdgeInsets.only(top: 70,left: 200,right: 20),
                child: Text(
                  "Welcome to the Streets of London",
                  style: TextStyle(fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

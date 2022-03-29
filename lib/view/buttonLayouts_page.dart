import 'package:flutter/material.dart';

class ButtonLayouts extends StatelessWidget {
  const ButtonLayouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Profile',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                  left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                  right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                  bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                ),
            ),
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xffffdfdfdf)),
                  left: BorderSide(width: 1.0, color: Color(0xffffdfdfdf)),
                  right: BorderSide(width: 1.0, color: Color(0xffff7f7f7f)),
                  bottom: BorderSide(width: 1.0, color: Color(0xffff7f7f7f)),
                ),
                color: Colors.grey,
              ),
              child: const Text(
                'OK',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Tooltip(
                waitDuration: const Duration(seconds: 1),
                showDuration: const Duration(seconds: 2),
                padding: const EdgeInsets.all(5),
                height: 35,
                textStyle: const TextStyle(
                    fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.green),
                message: 'My Account',
                child: FlatButton(
                  onPressed: () {

                  },
                  child: const Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
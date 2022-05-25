import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AlertDialog(
      title: const Text("Message"),
      shape:
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      content: const Text("Are you sure do you want to book this Inn?"),
      actions: <Widget>[
        //............................................................TextButton
        TextButton(
          child: const Text("Close"),
          onPressed: () {
            var snackBar = const SnackBar(
                duration: Duration(milliseconds: 2000),
                content: Text('Thanks for using our App.')
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Navigator.of(context).pop();
          },
        ),
        //............................................................TextButton
        TextButton(
          child: const Text("Proceed"),
          onPressed: (){
            var snackBar = const SnackBar(
                duration: Duration(milliseconds: 2000),
                content: Text('Booking Success.')
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}


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
      content: const Text("Do you like the BottomNavigationBar ?"),
      actions: <Widget>[
        //............................................................TextButton
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              child: const Text("Yes"),
              onPressed: () {
                var snackBar = const SnackBar(
                    duration: Duration(milliseconds: 2000),
                    content: Text("That's great! Thanks for your feedback.")
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.of(context).pop();
              },
            ),
            //............................................................TextButton
            TextButton(
              child: const Text("No"),
              onPressed: (){
                var snackBar = const SnackBar(
                    duration: Duration(milliseconds: 2000),
                    content: Text("Thanks for your feedback. We'll try better next time.")
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.of(context).pop();
              },
            ),
          ],
        )
      ],
    );
  }
}


import 'package:flutter/material.dart';

class DropdownMenuPage extends StatefulWidget {
  DropdownMenuPage({Key? key}) : super(key: key);

  //variables

  @override
  State<DropdownMenuPage> createState() => _DropdownMenuPageState();
}

class _DropdownMenuPageState extends State<DropdownMenuPage> {
  //This is constructor for Drop-Down
  _DropdownMenuPageState() {
    selectedValue = productSizeList[0];
  }

  String? selectedValue = '';

  final productSizeList = [
    'Extra Large',
    'Large',
    'Medium',
    'Small',
    'Extra Small'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownMenu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Simple Drop-Down Menu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),

            //..................................................Simple Drop-Down

            DropdownButton(
                value: selectedValue,
                items: productSizeList
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                }),

            const SizedBox(height: 20,),

            const Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 22.0),
              child: Text('Custom Drop-Down Menu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),

            //..................................................Custom Drop-Down

            DropdownButtonFormField(
                value: selectedValue,
                items: productSizeList
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.blueAccent,
              ),

              dropdownColor: Colors.lightBlue[50],
              decoration: const InputDecoration(
                labelText: 'Product Sizes',
                border: OutlineInputBorder()
              ),)
          ],
        ),
      ),
    );
  }
}

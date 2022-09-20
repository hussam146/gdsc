

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:class_room_2/ui_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  var textController = TextEditingController();
  int value = 0;
  int? age;

  dynamic getAge(int? dateOfBirth)
  {
    age = DateTime.now().year - dateOfBirth!;
    return age;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Age Calculator Model',
          style: TextStyle(
            color: Colors.black87
          ),
        ),
        centerTitle: true,
        titleSpacing: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const UiScreen()));
          }, icon: const Icon(Icons.arrow_forward_ios, color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: textController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter year of your birth',
                prefixIcon: Icon(Icons.view_agenda),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'Your age is $value years old',
              style: const TextStyle(
                fontSize: 20.0,

              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              child: OutlinedButton(

                  onPressed: (){
                setState(() {
                  value = getAge(int.parse(textController.text));
                });
              }, child: const Text('Calculate Age')),
            ),
          ],
        ),
      ),
    );
  }
}

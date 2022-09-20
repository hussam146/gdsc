// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({Key? key}) : super(key: key);

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  bool isPasswordShown = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Ui Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children:  [
                Container(
                  height: 300.0,
                  child: const Image(
                      width: 400.0,
                      height: 400.0,
                      image: NetworkImage(
                        'https://img.freepik.com/free-vector/engraving-hand-drawn-tropical-leaves-background_52683-63456.jpg?size=626&ext=jpg&uid=R77789306&ga=GA1.2.1905091256.1661616497',
                      ),
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'email',
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: isPasswordShown,
                  keyboardType: TextInputType.visiblePassword,
                  decoration:  InputDecoration(
                    labelText: 'password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(onPressed: ()
                    {
                      setState(() {
                        isPasswordShown = !isPasswordShown;
                      });
                      }, icon: isPasswordShown? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),),
                    border: const OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 50.0,
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: (){},
                        child: const Text('Login',style: TextStyle(fontSize: 20.0),)
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("My Todo List"),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 112, 201, 246),
            leading: IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
              // print("Message icon pressed");
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.camera_alt),
                onPressed: () {
                  // Add your onPressed code here!
                // print("Camera icon pressed");
                },
              ),
            ],
          ),
          body: ListView(
            children: [
              for (var i = 1; i < 10; i++) ...[
                Container(
                  width: 400,
                  height: 250,
                  color: Color.fromARGB(i * 15, 15 * i, i * 10, 231),
                ),
                const SizedBox(width: 20),
              ],
            ],),
        ),
      ),
    );
  }
}

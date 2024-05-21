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
              for (int i = 0; i < 10; i++)
                Container(
                  color: Color.fromRGBO(10 * i, 10 * i, 10 * i, 100),
                  child: ListTile(
                    title: const Text("Bonk Academy"),
                    subtitle: const Text("Bonk Academy"),
                    leading: const CircleAvatar(
                      child: Icon(Icons.message),
                    ),
                    trailing: const Icon(Icons.camera_alt),
                  ),
                ),
            ],),
      ),
    ),
    );
  }
}

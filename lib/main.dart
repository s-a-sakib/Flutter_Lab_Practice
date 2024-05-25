import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const AppView());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          backgroundColor:const Color.fromRGBO(157, 157, 245, 0.612),
          body: ListView(
            children: [
              for (int i = 0; i < 10; i++)
                Container(
                  color:const Color.fromRGBO(5, 189, 11, 1),
                  margin:const EdgeInsets.only(top: 5, bottom: 5), // Adjust margins
                  child: const ListTile(

                  title:  Text("Bonk Academy"),
                  subtitle: Text("Bonk Academy"),
                  leading: CircleAvatar(
                  child: Icon(Icons.message),
                  ),
                  trailing: Icon(Icons.camera_alt),
                ),
              ),
          ],),
      ),
    ),
    );
  }
}


class BonkArmy extends StatelessWidget{
  const BonkArmy({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset("build/images/bonk.png"),
        ),  
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
              color: Color.fromRGBO(30, 193, 234, 0.941),
              elevation: 20,
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SizedBox(
              height: 300,
              width: 300,
              child:  Center(child: Text("Card"),
              ),),),
        ),
      ),
    );
  }
}

class GridViewDesign extends StatelessWidget{
  const GridViewDesign({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          children:[
            for(int i = 1; i < 15; i++)...[
              const Card(
              color: Color.fromRGBO(30, 193, 234, 0.941),
              elevation: 20,
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SizedBox(
              height: 300,
              width: 300,
              child:  Center(child: Text("Card"),
              ),),),
            ] 
          ],
        )
      )
    );
  }
}


class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _MyAppState(); // Renamed class
}

class _MyAppState extends State <AppView> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _controller,
          children: const [
            BonkArmy(),
            MyApp(),
            CardView(),
            GridViewDesign(),
          ],
        )
      ),
    );
  }
}
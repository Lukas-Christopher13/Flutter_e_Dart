import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: const Column(
        children: [
          AppBar(),
          Expanded(
            child: AppContainer(),
          )
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.blue
      ),
      child: const Center(
        child: Text(
          'Flutter App',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}

class AppContainer extends StatelessWidget {
  const AppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          MenuBar(),
          Expanded(child: Blocos())
        ],
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.yellow,
      )
    );
  }
}

class Blocos extends StatelessWidget {
  const Blocos({super.key});

  @override
  Widget build(BuildContext context) {

    var box = Container(
      width: double.infinity,
      decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      color: Colors.pink,
    ),
      padding: EdgeInsets.all(10),
      child: FractionallySizedBox(
        widthFactor: 0.2,
        heightFactor: 0.2,
        //child: Container(
          //color: Colors.grey,
        //),
      ),
      
      );
     
    return Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: box),
              Expanded(child: box),
            ],
          ),
        ),
        Expanded(child: box),
      ],
    );
    
      
  }
}

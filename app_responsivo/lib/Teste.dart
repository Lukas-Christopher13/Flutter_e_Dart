import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Column(
        children: [
          AppBar(),
          Expanded(
            child: ContainerApp(),
          )
        ],
      )
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: double.infinity,
      color: Colors.blue,
      child: const Text(
        "Flutter",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
      ),
    );
  }
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppMenu(),
        Expanded(
          child: Caixas()
        )
      ],
    );
  }
}

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {

    var appBar = Container(
      width: 200,
      color: Colors.yellow
    );

    var appBar2 = Container(
      width: 1,
      color: Colors.red
    );
    
    var currentWidth = MediaQuery.of(context).size.width;
 

    return currentWidth > 600 ? appBar : appBar2; 
  }
}

class Caixas extends StatelessWidget {
  const Caixas({super.key});

  @override
  Widget build(BuildContext context) {

    var box = Container(
      decoration: BoxDecoration(
        color: Colors.pink,
        border: Border.all(color: Colors.black,)
      ),
    );

    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: box),
              Expanded(child: box)
            ],
          ),
        ),
        Expanded(child: box)
      ],
    );
  }
}
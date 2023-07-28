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
        body: StatelessWidgetTest(),
      ),
    );
  }
}


//não gerencial seu propio estado, logo, essa classe é meio que uma classe constante, nada pode ser alterardo  
class StatelessWidgetTest extends StatelessWidget {
  const StatelessWidgetTest({super.key});

  static bool colorFlip = false;

  void alterar() {
    colorFlip = !colorFlip;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: colorFlip? Colors.blue : Colors.red,
      child: StatefulWidgetTeste(
        stateFromUp: alterar,
      )
    );
  }
}

class StatefulWidgetTeste extends StatefulWidget {
  Function stateFromUp;

  StatefulWidgetTeste({super.key, required this.stateFromUp});
  
  @override
  State<StatefulWidgetTeste> createState() => _StatefulWidgetTesteState();
}

class _StatefulWidgetTesteState extends State<StatefulWidgetTeste> {

  void setStateNoStateless() {
    widget.stateFromUp();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: FloatingActionButton(
        onPressed: setStateNoStateless,
      ),
    ); 
  }
}
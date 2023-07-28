import 'package:flutter/material.dart';

class MyAppTeste extends StatelessWidget {
  const MyAppTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          FractionalTranslation(
            translation: const Offset(1,0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class FractionaAnimation extends StatefulWidget {
  const FractionaAnimation({super.key});

  @override
  State<FractionaAnimation> createState() => _FractionaAnimationState();
}

class _FractionaAnimationState extends State<FractionaAnimation> {
  
  bool _mover = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 2),
            child: FractionalTranslation(
              translation: _mover? Offset(0,0) : Offset(1, 0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          TextButton(
            onPressed: (){
              setState(() {
                _mover = !_mover;
              });
            },
            child: Text("Press"),
          )
        ],
      ),
    );
  }
}
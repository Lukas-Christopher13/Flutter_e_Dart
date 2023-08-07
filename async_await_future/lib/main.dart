import 'package:async_await_future/delay.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonFutureTeste(),
    );
  }
}

class ButtonFutureTeste extends StatelessWidget {
  const ButtonFutureTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureButton(),
            SizedBox(height: 30,),
            FutureButton(),
          ],
        ),
      ),
    );
  }
}

class FutureButton extends StatefulWidget {
  const FutureButton({super.key});

  @override
  State<FutureButton> createState() => _FutureButtonState();
}

class _FutureButtonState extends State<FutureButton> {

  bool press = true;
  int value = 1000;

  void alterarCor(){
    setState(() {
      dalay(value);
      value = value * value;
      press = !press;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => alterarCor(),
      child: Container(
        height: 200,
        width: 200,
        color: press? Colors.blue : Colors.red,
      ),
    );
  }
}

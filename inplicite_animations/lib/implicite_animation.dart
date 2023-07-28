import 'package:flutter/material.dart';


class MyAnimationApp extends StatefulWidget {
  const MyAnimationApp({super.key});

  @override
  State<MyAnimationApp> createState() => _MyAnimationAppState();
}

class _MyAnimationAppState extends State<MyAnimationApp> {
  bool _width = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width? 100 : 500,
              height: 40,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 1,
                  maxWidth: 1,
                ),
                child: Container(
                  color: Colors.black,
                ),
              ),
              duration: const Duration(seconds: 1),
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  _width = !_width;
                });
              },
              child: Text("press"),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'login_widget.dart';
import 'image_widget.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 32, 32),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.8,
                child: MyLoginImagePage(),
              )
            ),
            //Login form
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.6,
                heightFactor: 0.6,
                child: LoginScreen(),
              )
            )
          ],
        ),
      ),
    );
  }
}
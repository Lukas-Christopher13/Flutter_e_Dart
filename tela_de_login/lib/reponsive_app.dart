import 'package:flutter/material.dart';
import 'mobile.dart';
import 'desktop.dart';

class SeletorDeDispositivo extends StatelessWidget {
  const SeletorDeDispositivo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        if(constraints.maxWidth < 600) {
          return MobileScreen();
        }else{
          return DesktopScreen();
        }
      },
    );
  }
}
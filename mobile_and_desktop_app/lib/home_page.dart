import 'package:flutter/material.dart';

class ResponsiveApp extends StatelessWidget {
  final Widget desktop;
  final Widget mobile; 

  const ResponsiveApp({required this.desktop, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600) {
          return mobile;
        }else {
          return desktop;
        }
      },
    );
  }
}
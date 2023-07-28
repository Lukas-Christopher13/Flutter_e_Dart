import 'package:flutter/material.dart';
import 'package:mobile_and_desktop_app/desktop_app.dart';
import 'package:mobile_and_desktop_app/home_page.dart';
import 'package:mobile_and_desktop_app/mobile_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveApp(
        desktop: DesktopApp(),
        mobile: MobileApp(),
      ),
    );
  }
}
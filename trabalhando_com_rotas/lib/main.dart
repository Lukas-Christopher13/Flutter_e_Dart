import 'package:flutter/material.dart';
import 'package:trabalhando_com_rotas/home_page.dart';
import 'package:trabalhando_com_rotas/telas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const MyHomePage(),
        '/red' : (context) => const MyRedPage(),
        '/blue' : (context) => const MyBluePage(),
        '/yellow' : (context) => const MyYellowPage(),
        '/green' : (context) => const MyGreenPage(),
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:testes_com_forms/stf_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Teste"),
        ),
        body: const StfForm(),
      ),
    );
  }
}
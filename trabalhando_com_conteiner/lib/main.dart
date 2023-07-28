import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget image(String path) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      margin: const EdgeInsets.all(5),
      child: Image.asset(path),
    );
  }
  
  @override
  Widget build(BuildContext context) {

    Widget linha = Container(
    child: Row(
      children: [
        image('lib/imagens/download.png'),
        image('lib/imagens/download.png')
        ],
      ),
    );

     Widget fotos = Container(
      decoration: const BoxDecoration(
        color: Colors.grey
      ),
      child: Column(
        children: [
          linha,
          linha,
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: fotos
      ),
    );
  }
}

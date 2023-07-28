// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Titulo(),
              Paragrafo(),
              Avaliacao(),
            ],
          ),
        )
      )    
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: const Color.fromARGB(255, 154, 195, 229),
        ),
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),

        width: double.maxFinite,
        child: const Center(child: Text("Torta de Morango")),
      )
    );
  }
}

class Paragrafo extends StatelessWidget {
  const Paragrafo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: const Color.fromARGB(255, 154, 195, 229)
        ),
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
        child: const Center(
          child: Text(
          """
          A torta de morango é uma sobremesa fácil e rápida de preparar,
          além de ficar com uma aparência linda na mesa. A massa tem um 
          preparo simples e leva apenas 5 ingredientes: farinha de trigo,
          ovo, manteiga, açúcar e fermento em pó.""",
          textAlign: TextAlign.justify,
          ),
        ),
      )
    );
  }
}

class Avaliacao extends StatelessWidget {
  const Avaliacao({super.key});

  @override
  Widget build(BuildContext context) {

    Widget estrelas = const Row(
      children: [
        Icon(Icons.star, color: Colors.yellow,),
        Icon(Icons.star, color: Colors.yellow,),
        Icon(Icons.star, color: Colors.yellow,),
        Icon(Icons.star, color: Colors.yellow,),
        Icon(Icons.star, color: Colors.black,),
      ],
    );

    Widget avaliacao = const Text("170 Avaliações");

    Widget baseWidget(Widget icone, String text1, String text2) {
      return Column(
        children: [
          icone,
          Text(text1),
          Text(text2),
        ],
      );
    }

    return Container(
      height: 200,
      width: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              estrelas,
              avaliacao
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              baseWidget(const Icon(Icons.image), 'time', '2-9'),
              baseWidget(const Icon(Icons.pages), 'time', '12-92'),
              baseWidget(const Icon(Icons.pets), 'time', '5-32'),
            ],
          ),
        ],
      ),
    );
  }
}





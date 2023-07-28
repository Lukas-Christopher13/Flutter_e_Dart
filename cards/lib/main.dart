import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget descricao = Container(
      width: 350,
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Imagem(),
                const Descricao(),
                const Opcoes(),
                descricao
              ],
            ),
          ),
        )
      )
    ); 
  }
}

class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'asserts/imagens/natureza.jpg',
      width: 350,
    );
  }
}

class Descricao extends StatelessWidget {
  const Descricao({super.key});

  @override
  Widget build(BuildContext context) {

    Widget descricao = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: const Text(
            "Fazenda rustica",
          ),
        ),
        const Text(
          "Localizada em algum lugar...",
          style: TextStyle(
            color: Color.fromARGB(255, 161, 161, 161)
          ),
        )
      ],
    );

    Widget avalicaoes = const Row(
      children: [
        Icon(Icons.star),
        Text("17"),
      ],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        descricao,
        avalicaoes
      ],
    );
  }
}

class Opcoes extends StatelessWidget {
  const Opcoes({super.key});

  Widget botao(Icon icone, String nome) {
    return SizedBox(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icone,
          Text(
            nome,
            style: const TextStyle(
              color:Colors.blue,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        botao(const Icon(Icons.call, color: Colors.blue,), "CALL"),
        botao(const Icon(Icons.arrow_circle_right, color: Colors.blue), "ROUTE"),
        botao(const Icon(Icons.share, color: Colors.blue), "SHARE"),
      ],
    );
  }
}



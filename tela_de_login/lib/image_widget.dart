import 'package:flutter/material.dart';

class MyLoginImagePage extends StatelessWidget {
  const MyLoginImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //texto
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Faça Login para entra em nosso time",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 45,
              fontFamily: 'BabasNeue'
            ),
          ),
        ),
        //imagem
        Expanded(
          child: Container(
            child: const Image(
              image: AssetImage('asserts/astronauta.png'),
            ),
          ),
        ),
      ],
    );
  }
}

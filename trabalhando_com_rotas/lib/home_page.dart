import 'package:flutter/material.dart';
import 'package:trabalhando_com_rotas/telas.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Rotas"),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 8,),
              MyRoutButton(
                text: "Pagina vermelha",
                color: Colors.red,
                page: '/red',
              ),
              SizedBox(height: 8,),
              MyRoutButton(
                text: "Pagina azul", 
                color: Colors.blue,
                page: '/blue',
              ),
              SizedBox(height: 8,),
              MyRoutButton(
                text: "Pagina amarela", 
                color: Colors.yellow,
                page: '/yellow',
              ),
              SizedBox(height: 8,),
              MyRoutButton(
                text: "Pagina verde", 
                color: Colors.green,
                page: '/green',
              ),            
            ],
          ),
        ),
      ),
    );
  }
}

class MyRoutButton extends StatelessWidget {
  final String text;
  final Color color;
  final String page;
  
  const MyRoutButton({super.key, required this.text, required this.color, required this.page});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, page);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

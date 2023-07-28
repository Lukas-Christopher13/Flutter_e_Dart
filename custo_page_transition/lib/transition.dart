import 'package:custo_page_transition/custom_page_router.dart';
import 'package:flutter/material.dart';

class RotasAnimadas extends StatelessWidget {
  const RotasAnimadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Router Translation"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              Text("Navigator To"),
              SizedBox(height: 15,),
              MyButton(
                title: "Left",
              ),
              SizedBox(height: 8,),
               MyButton(
                title: "Right",
              ),
              SizedBox(height: 8,),
               MyButton(
                title: "Up",
              ),
              SizedBox(height: 8,),
               MyButton(
                title: "Down",
              ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  const MyButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
       

      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.blue)
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
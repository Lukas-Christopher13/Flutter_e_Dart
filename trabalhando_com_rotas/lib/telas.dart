import 'package:flutter/material.dart';
import 'package:trabalhando_com_rotas/home_page.dart';

class MyRedPage extends StatelessWidget {
  const MyRedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyGreenPage()));
            },
            child: const Text("Voltar"),
          ),
        ),
      ),
    );
  }
}

class MyBluePage extends StatelessWidget {
  const MyBluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("BLUE"),
      ),
      body: Container(),
    );
  }
}

class MyYellowPage extends StatelessWidget {
  const MyYellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("YELLOW"),
      ),
      body: Container(),
    );
  }
}

class MyGreenPage extends StatelessWidget {
  const MyGreenPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("GREEN"),
      ),
      body: Container(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(_crateRoute());
          },
          child: const Text("Press"),
        ),
      ),
    );
  }

  Route _crateRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>  const MyHomePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
  
      return SlideTransition(position: Animation.,);
    }
  );
}
}
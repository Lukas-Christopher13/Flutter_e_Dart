import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Forms"),
        ),
        body:const FormTeste(),
      ),
    );
  }
}

class FormTeste extends StatefulWidget {
  const FormTeste({super.key});

  @override
  State<FormTeste> createState() => _FormTesteState();
}

class _FormTesteState extends State<FormTeste> {

  String texto = "";

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          TextFildeTeste(label: "Email",),
          SizedBox(
            height: 15,
          ),
          TextFildeTeste(label: "Senha",)
        ],
      ),
    );
  }
}

class TextFildeTeste extends StatelessWidget {
  final String label;

  const TextFildeTeste({
    super.key,
    required this.label,
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          labelText: label,
          hintText: "Escreva o seu email",
          border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        prefixIcon: Icon(Icons.person)
      ),
    );
  }
}

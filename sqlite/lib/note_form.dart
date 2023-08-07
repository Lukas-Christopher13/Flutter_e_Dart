import 'package:flutter/material.dart';
import 'package:sqlite/regas_de_negocio.dart';
import 'db_conection.dart';

class NoteForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final nota = Nota();

  NoteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar Nota"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextFormFild(
                onSaved: (text) => nota.titulo = text,
              ),
              const SizedBox(height: 5,),
              MyTextArea(
                onSaved: (text) => nota.nota = text,
              ),
              TextButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                    GlobalControler.controler.addNote(nota);
                    Navigator.pop(context);
                  }
                },
                style: const ButtonStyle(),
                child: const Text("salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextFormFild extends StatelessWidget {
  final void Function(String? text) onSaved;

  const MyTextFormFild({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value == null || value.isEmpty) {
          return "Digite algo";
        }
      },
      onSaved: onSaved,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      decoration:
        const InputDecoration(hintText: "Título", border: OutlineInputBorder()),
    );
  }
}

class MyTextArea extends StatelessWidget {
  final void Function(String? text) onSaved;

  const MyTextArea({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value == null || value.isEmpty) {
          return "Digite algo";
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: 6,
      maxLength: 200,
      style: const TextStyle(
        fontSize: 15,
      ),
      decoration:
        const InputDecoration(hintText: "Digite...", border: OutlineInputBorder()),
    );
  }
}

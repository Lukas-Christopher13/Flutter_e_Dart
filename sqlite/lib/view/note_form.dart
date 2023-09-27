import 'package:flutter/material.dart';
import 'package:sqlite/controller/regas_de_negocio.dart';
import '../model/note_model.dart';

class NoteForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final nota = Nota();

  NoteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar Lembrete"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
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
                const SizedBox(height: 20,),
                TextButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      GlobalControler.controler.addNote(nota);
                      Navigator.pop(context);
                    }
                  },
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(
                      Size(100, 60)
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                  ),
                  child: const Text(
                    "Salvar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
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
        const InputDecoration(
        hintText: "Título", 
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        )
      ),
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
        const InputDecoration(
        hintText: "Digite...", 
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
        )
      ),
    );
  }
}

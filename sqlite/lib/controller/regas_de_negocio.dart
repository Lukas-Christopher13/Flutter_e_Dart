import 'package:flutter/material.dart';
import 'db_conection.dart';
import '../view/note_widget.dart';
import '../model/note_model.dart';
import '../model/my_stack.dart';


class GlobalControler {
  static Controler controler = Controler();

  static void remove(Note value){
    controler.lembretes.remover(value);
    controler.remove(Nota(
      titulo: value.title,
      nota: value.text,
    ));
  }
}

class Controler extends ChangeNotifier {

  MyStack<Widget> lembretes = MyStack();

  Future<void> creatNoteList() async {
    var noteList = await DBConection.readAllLines();
    noteList?.forEach((element) {
      lembretes.push(Note(
        title: element["titulo"] ,
        text: element["nota"] ,
      ));
    });
    notifyListeners();
  }

  Future<void> addNote(Nota note) async {
    await DBConection.saveLine(note);
    lembretes.push(
      Note(
        title: note.titulo!,
        text: note.nota!,
    ));
    notifyListeners();
  }

  Future<void> remove(Nota nota) async {
    DBConection.deletarLinha(nota);
    notifyListeners();
  }
}




import 'package:flutter/material.dart';
import "main.dart";
import 'db_conection.dart';


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

class MyStack<T> {
  final List<T> _list;
  int _top;

  MyStack() 
  : _list = [],
    _top = 0
  {} 

  void push(T value) {
    _list.add(value);
    _top++;
  }

  //talvez de problema por conta do 'i'
  T remover(T value) {
    var item = value;
    _list.remove(value);
    return item;
  } 

  List<T> toArray() {
    List<T> array  = [];
    
    for(int i = _list.length-1; i > 0; i--) {
      array.add(_list[i]);
    }
    return array;
  }
}
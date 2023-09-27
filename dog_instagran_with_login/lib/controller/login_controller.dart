import 'package:flutter/material.dart';
import '../repository/db.dart';

class LoginController {
  String? email;
  String? senha;
  bool mensgemDeErro = false;
  late DB _database;

  LoginController() {
    _database = DB();
  }

  Future<bool> validarLogin() async {
    var dogList = await _database.getPetWithHasThisEmail(email!);

    if(dogList.isEmpty) {
      return false;
    }

    if(!(dogList.first["senha"] == senha)) {
      return false;
    }
    return true;
  }

  Widget exibirMensagemDeErroAoLogar() {
    if(mensgemDeErro) {
      return Container();
    }
    return Container(
      color: Colors.red,
      child: Text("Email ou senhas incorretos"),
    );
  }
}
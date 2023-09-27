import 'package:dog_instagran_with_login/controller/login_controller.dart';
import 'package:dog_instagran_with_login/view/login/scren.dart';
import 'package:dog_instagran_with_login/view/register/register_view.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Login extends StatelessWidget {
  LoginController loginController = LoginController();
    
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmailFild(
                  onSaved: (email) => loginController.email = email,
                ),
                PasswordFild(
                  onSaved: (password) => loginController.senha = password,
                ),
                TextButton(
                  style: const ButtonStyle(
                
                  ),
                  onPressed: () {
                    _formKey.currentState!.save();
                    loginController.validarLogin().then((value) {
                      if(value) {
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const Teste()),
                      );
                      }else {
                        loginController.mensgemDeErro = true;
                      }
                    });                
                  },
                  child: const Text("Logar"),
                ),
                const SizedBox(height: 5,),
                SelectableText(
                  "Ainda não possui uma conta?",
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => RegisterView())
                    ); 
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmailFild extends StatelessWidget {
  final void Function(String? email) onSaved;

  const EmailFild({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: onSaved,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class PasswordFild extends StatelessWidget {
  final void Function(String? password) onSaved;

  const PasswordFild({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: onSaved,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
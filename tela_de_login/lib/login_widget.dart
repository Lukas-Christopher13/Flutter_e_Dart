import 'package:flutter/material.dart';
import 'form_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Login
             SizedBox(
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.purple,
                  fontFamily: "BabasNeue"
                ),
              ),
            ),
            //Form fild
               Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: MyTextFild(
                  label: "Usuário",
                  hintText: "Usuário",
                )),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: MyTextFild(
                  label: "Passworld",
                  hintText: "Passworld",
                )),
            
            
            
          ],
        ),
      ),
    );
  }
}

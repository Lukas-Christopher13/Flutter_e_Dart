import 'package:flutter/material.dart';
import 'package:tela_de_login_no_figma/icons.dart';
import 'package:tela_de_login_no_figma/login_text_fild.dart';
import 'package:tela_de_login_no_figma/pallete.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asserts/images/BG.png'),
            fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Image(image: AssetImage('asserts/images/Group.png')),
                const SizedBox(height: 71,),
                const AppTextFild(
                  label: "Username",
                  icon: MyIcons.person,
                ),
                const SizedBox(height: 20),
                const AppTextFild(
                  label: "Password",
                  icon: MyIcons.lock,
                ),
                const SizedBox(height: 43,),
                Container(
                  width: 300,
                  height: 45,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Pallete.loginButtonTextColor,
                      elevation: 20
                    ),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Pallete.backgroundColor,
                        fontSize: 16,
                        fontFamily: "MontSerrat"
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 11,),
                Container(
                  alignment: Alignment.topRight,
                  width: 300,
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Pallete.loginButtonTextColor,
                      fontFamily: "MontSerrat" ,
                      fontSize: 16
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
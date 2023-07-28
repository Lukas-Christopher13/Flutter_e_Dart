import 'package:flutter/material.dart';
import 'package:my_form_app/text_fild.dart';


class MyFormApp extends StatelessWidget {
  const MyFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 564,
            ),
            child: Form(
              child: Column(
                children: [
                  MyFormFild(
                    fildName: 'Username',
                    label: "Enter Username",
                  ),
                  SizedBox(height: 32,),
                  MyFormFild.assistiveText(
                    fildName: "Password",
                    label: "Enter Password",
                    assistiveText: "Your password is between 4 and 12 characters",
                  ),
                  SizedBox(height: 32,),
                  MyFormFild(
                    fildName: "Input Text Label",
                    label: "Enter Text",
                  ),

                  Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: (){
                          Form.of(context)?.validate();
                        },
                        child: Text("send"),
                      );
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
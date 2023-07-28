import 'package:flutter/material.dart';

class StfForm extends StatefulWidget {
  const StfForm({super.key});

  @override
  State<StfForm> createState() => _StfFormState();
}

class _StfFormState extends State<StfForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty) {
                return "Pleas enter some text";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                _formKey.currentState!.validate();
              },
              child: const Text("Submit"),
            ),
          ),
          const PasswordFild(),
          FormFildStateless(),
          const MyPasswordFormFild(),
          const MyPasswordFormFild(),

        ],
      ),
    );
  }
}


class PasswordFild extends StatefulWidget {
  const PasswordFild({super.key});

  @override
  State<PasswordFild> createState() => _PasswordFildState();
}

class _PasswordFildState extends State<PasswordFild> {
  final GlobalKey<FormFieldState> keyd = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: keyd,
      validator: (value) {
        if(value!.length < 4){
          return "Erro";
        }
        return null;
      },
      onChanged: (text) {
        keyd.currentState!.validate();
      }
    );
  }
}

class FormFildStateless extends StatelessWidget {
  FormFildStateless({super.key});

  final GlobalKey<FormFieldState> keyd = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: keyd,
      validator: (value) {
        if(value!.length < 4){
          return "Erro";
        }
        return null;
      },
      onChanged: (text) {
        keyd.currentState!.validate();
      }
    );
  }
}

class MyPasswordFormFild extends StatefulWidget {
  const MyPasswordFormFild({super.key});

  @override
  State<MyPasswordFormFild> createState() => _MyPasswordFormFildState();
}

class _MyPasswordFormFildState extends State<MyPasswordFormFild> {
  String _worngPasswordMensage = "";
  Widget _visibilityIcon = const Icon(Icons.visibility_off);
  bool _visibility = true;

  String validarPassword(String password) {
    if(password.length < 5) {
      return "A senha deve ter mais de 4 digitos";

    }else if(!password.contains(RegExp(r'[A-Z]'))) {
      return "A senha deve conter letras maiusculas";
      
    }else if (!password.contains(RegExp(r'[0-9]'))) {
      return "A senha deve conter numeros";

    }else{
      return "";
    }
  }

  void turnVisibilty() {
    setState(() {
      _visibility = !_visibility;
      _visibilityIcon = _visibility ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility);
    });
  }

  Widget invalidPasswordMensage() {
    if(_worngPasswordMensage == "") {
      return const SizedBox();
    }else{
      return Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(
          _worngPasswordMensage,
          style: const TextStyle(
          color: Colors.red
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                _worngPasswordMensage = validarPassword(value);
              });
            },
            decoration:  InputDecoration(
              label: const Text("Password"),
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {
                  turnVisibilty();
                },
                icon: _visibilityIcon,
              ),
              counterText: "",
            ),
            obscureText: _visibility,
            maxLength: 14,
          ),
        ),
        invalidPasswordMensage()
      ],
    );
  }
}


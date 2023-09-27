import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class RegisterView extends StatefulWidget {
  RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //filds
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Nome do Pet",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Idade",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Center(
                    child: SelectGender(
                      onSaved: (gender) {},
                    ),
                  ),
                  MyDropDowButton(),
                  MyRadioListTilte(),
                  MyCheckdBox(),
                  const SizedBox(height: 5,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder()
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectGender extends StatefulWidget {
  final Function(String gender) onSaved;
  const SelectGender({super.key, required this.onSaved});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  String _gender = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Macho"),
        Radio(
          value: "M",
          groupValue: _gender,
          onChanged: (gender) {
            setState(() {
              _gender = gender!;
              widget.onSaved(_gender);
            });
          },
        ),
        const Text("Femea"),        
        Radio(
          value: "F",
          groupValue: _gender,
          onChanged: (gender) {
            setState(() {
              _gender = gender!;
              widget.onSaved(_gender);
            });
          },
        )
      ],
    );
  }
}

List<String> valores = ["1","2","3"];

class MyDropDowButton extends StatefulWidget {
  const MyDropDowButton({super.key});

  @override
  State<MyDropDowButton> createState() => _MyDropDowButtonState();
}

class _MyDropDowButtonState extends State<MyDropDowButton> {
  String dropDowValue = valores[0];

  @override
  Widget build(BuildContext context) {
    //Tentativa 1
    /*
    return DropdownButton(
      value: dropDowValue,
      items: valores.map<DropdownMenuItem<String>>((String value)  {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (object){},
    );
    */

    return DropdownButton(
      value: dropDowValue,
      items: [
        DropdownMenuItem(value: valores[0] , child: Text(valores[0])),
        DropdownMenuItem(value: valores[1] , child: Text(valores[1])),
        DropdownMenuItem(value: valores[2] , child: Text(valores[2])),
      ],
      onChanged: (value) {
        setState(() {
          dropDowValue = value!;
        });
      },
    );
  }
}

class MyRadioListTilte extends StatefulWidget {
  const MyRadioListTilte({super.key});

  @override
  State<MyRadioListTilte> createState() => _MyRadioListTilteState();
}

class _MyRadioListTilteState extends State<MyRadioListTilte> {
  String myValue = valores[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: valores[0],
          groupValue: myValue,
          onChanged: (value) {
            setState(() {
              myValue = value!;
            });
          },
        ),
        RadioListTile(
          value: valores[1],
          groupValue: myValue,
          onChanged: (value) {
            setState(() {
              myValue = value!;
            });
          },
        ),
        RadioListTile(
          value: valores[2],
          groupValue: myValue,
          onChanged: (value) {
            setState(() {
              myValue = value!;
            });
          },
        ),
      ],
    );
  }
}

class MyCheckdBox extends StatefulWidget {
  const MyCheckdBox({super.key});

  @override
  State<MyCheckdBox> createState() => _MyCheckdBoxState();
}

class _MyCheckdBoxState extends State<MyCheckdBox> {
  bool resp1 = false;
  bool resp2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: resp1, onChanged: (value) {
          setState(() {
            resp1 = value!;
          });
        }),
        Checkbox(value: resp2, onChanged: (value) {
          setState(() {
            resp2 = value!;
          });
        }),
      ],
    );
  }
}



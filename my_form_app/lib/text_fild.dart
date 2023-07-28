import 'package:flutter/material.dart';
import 'package:my_form_app/pallet.dart';

class MyFormFild extends StatefulWidget {
  final String fildName;
  final String label; 
  String? assistiveText;
  
  MyFormFild({
    super.key, 
    required this.fildName, 
    required this.label,
    });

  MyFormFild.assistiveText({
    super.key,
    required this.fildName,
    required this.label,
    required this.assistiveText
  });

  @override
  State<MyFormFild> createState() => _MyFormFildState();
}

class _MyFormFildState extends State<MyFormFild> {
  final controller = TextEditingController(); 

  Widget assistiveTextFunction() {
    if(widget.assistiveText == null) {
      return Container();
    }else {
      return Container(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          widget.assistiveText!,
          style: TextStyle(
            color: Pallet.textColor,
            fontSize: 12,
          ),
        )
      );
    }
  }

   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fildName,
          style: TextStyle(
            color: Pallet.textColor,
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 8,),
        TextFormField(
          validator: (text) {
            if(text == null) {
              return 'Esse campo não pode ser nulo';
            }
          },
          controller: controller,
          cursorColor: Pallet.textColor,
          decoration: InputDecoration(
            hintText: widget.label,

            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                color: Pallet.buttonColor,
                width: 2
              )
            )
          ),
        ),
        assistiveTextFunction()
      ],
    );
  }
}


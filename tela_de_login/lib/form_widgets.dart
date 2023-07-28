import 'package:flutter/material.dart';

class MyTextFild extends StatelessWidget {
  final String label;
  final String hintText;

  const MyTextFild({super.key, required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //titulo
        Padding(
          padding: EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              label,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        //My Form fild
        TextFormField(
          cursorColor: Colors.white,
          style: const TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color.fromARGB(255, 90, 90, 90),

            hintStyle: const TextStyle(
              color: Colors.white
            ),
            
            focusedBorder: const OutlineInputBorder(),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
          ),
        ),
      ],
    );
  }
}

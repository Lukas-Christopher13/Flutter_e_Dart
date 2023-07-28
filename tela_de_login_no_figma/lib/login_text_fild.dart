import 'package:flutter/material.dart';
import 'pallete.dart';

class AppTextFild extends StatelessWidget {
  final Widget icon;
  final String label;

  const AppTextFild({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      color: Pallete.loginButtonTextColor,
      fontFamily: 'MontSerrat',
      fontSize: 14
    );

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
        maxHeight: 45,
      ),
      child: TextFormField(
        style: textStyle,
        cursorColor: Pallete.loginButtonTextColor,
        decoration: InputDecoration(
            hintText: label,
            hintStyle: textStyle,
            prefixIcon: icon,
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Pallete.textColorForTextFild, width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Pallete.textColorForTextFild, width: 2))),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyIcons {
  static const Widget person = MyIcon(iconPath: 'asserts/icons/user.png');
  static const Widget lock = MyIcon(iconPath: 'asserts/icons/lock.png');
}

class MyIcon extends StatelessWidget {
  final String iconPath;

  const MyIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Image(
        image: AssetImage(iconPath),
      ),
    );
  }
}
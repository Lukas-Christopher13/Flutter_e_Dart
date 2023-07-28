import 'package:flutter/material.dart';

class CustomPageRouter extends PageRouteBuilder {
  final Widget child;

  CustomPageRouter({
    required this.child
  }) : super(
    transitionDuration: const Duration(seconds: 1),
    pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      child: child,
    );
  }
}
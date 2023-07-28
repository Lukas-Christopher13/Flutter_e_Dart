import 'package:flutter/material.dart';

class ExpandedImage extends StatelessWidget {
  final String image;

  const ExpandedImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          )
        ),
      ),
    );
  }
}
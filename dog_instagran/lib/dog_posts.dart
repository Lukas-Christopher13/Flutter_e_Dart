import 'package:flutter/material.dart';
import 'package:woolf_instagran/pallet.dart';

class DogPosts extends StatelessWidget {
  const DogPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            height: 100,
            width: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage("assets/imagens/dogPosts/dogPost2.jpeg"),
                fit: BoxFit.fill
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HAPPY WOOFS",
                style: TextStyle(
                  color: Pallet.dogCardTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "How to keep your Woof happy and healthy",
                style: TextStyle(
                  color: Pallet.dogCardTextColor
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
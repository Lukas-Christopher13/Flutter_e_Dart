import 'package:flutter/material.dart';
import 'package:woolf_instagran/dog.dart';
import 'package:woolf_instagran/dog_perfil.dart';
import 'package:woolf_instagran/expanded_image.dart';
import 'package:woolf_instagran/pallet.dart';

class DogCard extends StatefulWidget {
  final Dog dog;
  
  const DogCard({super.key, required this.dog});

  @override
  State<DogCard> createState() => _DogCardState();
}

class _DogCardState extends State<DogCard> {

  void goToImage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) { 
      return ExpandedImage(image: widget.dog.foto); 
    } ));
  }

  void goToPerfil() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return DogPerfil(dog: widget.dog,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToPerfil(),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Pallet.dogCardBorderColor, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Pallet.dogCardBorderColor,
              blurRadius: 1,
              offset: const Offset(0,5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                goToImage();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                      color: Pallet.dogCardBorderColor,
                      blurRadius: 3,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(widget.dog.foto),
                ),
              ),
            ),
            Text(
              widget.dog.nome,
              style: TextStyle(
                color: Pallet.dogCardTextColor,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:woolf_instagran/model/dog.dart';
import 'package:woolf_instagran/expanded_image.dart';
import 'package:woolf_instagran/pallet.dart';

class DogPerfil extends StatelessWidget {
  final Dog dog;

  const DogPerfil({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    TextStyle textStyle = TextStyle(
      fontSize: 18,
      color: Pallet.dogCardTextColor,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                    ),
                ),
                Text(
                  dog.nome,
                  style: TextStyle(
                    fontSize: 30,
                    color: Pallet.dogCardTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return ExpandedImage(image: dog.foto,);
                    }));
                  },
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(dog.foto),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.92,
                    height: height * 0.55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Pallet.dogCardBorderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Pallet.dogCardBorderColor,
                          offset: const Offset(4,4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "IDADE: ${dog.idade}${(dog.idade > 1)? " Anos" : " Ano"}",
                            style: textStyle,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text(
                                "SEXO:",
                                style: textStyle,
                              ),
                              Text(
                                (dog.sexo == "M")? " Macho" : " Femea",
                                style: textStyle,
                              ),
                              Icon(
                                (dog.sexo == "M")? Icons.male : Icons.female,
                                color: (dog.sexo == "M")? Colors.blue : Colors.pink,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "RAÇA: ${dog.raca}",
                            style: textStyle,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "BRINQUEDO FAVORITO: ${dog.briquedoFavorito}",
                            style: textStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:woolf_instagran/dog_card.dart';
import 'package:woolf_instagran/dog_posts.dart';
import 'package:woolf_instagran/dogs_data_base.dart';
import 'dog.dart';

class InstagranHomePage extends StatelessWidget {
  final List<Dog> dogs = [];

  InstagranHomePage({super.key}) {
    dogs.add(Dogs.lapa);
    dogs.add(Dogs.roberto);
    dogs.add(Dogs.guts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Trending Woofs",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),            
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: dogs.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 15,);
                  } ,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DogCard(dog: dogs[index]);
                  },
                  padding: const EdgeInsets.only(bottom: 8),
                ),
              ),
              const SizedBox(height: 25,),
              const Text(
                "New Woofs Posts",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 350,
                child: ListView.separated(
                  itemCount: 30,
                  separatorBuilder: (context, index) => const SizedBox(height: 10,),
                  itemBuilder: (context, index) => DogPosts(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
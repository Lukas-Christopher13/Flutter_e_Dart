import 'package:flutter/material.dart';
import 'package:woolf_instagran/dog_posts.dart';
import 'dog_card.dart';
import 'model/dog.dart';
import 'dogs_data_base.dart';

class NewHomePage extends StatelessWidget {
  final controller = ScrollController();

  final List<Widget> lista = [
    const SizedBox(height: 10,),
    const Padding(
      padding: EdgeInsets.only(left: 4),
      child: Text(
        "Trending Woofs",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const SizedBox(height: 15,),
    Padding(
      padding: const EdgeInsets.only(left: 2, right: 2),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 200,
        ),
        child: DogFid()
      ),
    ),
    const SizedBox(height: 20,),
    const Padding(
      padding: EdgeInsets.only(left: 4),
      child: Text(
        "New Woofs Posts",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const SizedBox(height: 10,),
  ];

  NewHomePage({super.key}) {
    _buildList();
  }

  void goToUp() {
    controller.jumpTo(1);
  }

  void _buildList() {
    for(int i = 0; i < 30; i++) {
      lista.add(
      const Column(
        children: [
          SizedBox(height: 5,),
          DogPosts(),
          SizedBox(height: 5,),
        ],
      ));
    }
  }

  //o problema é aqui ó
  Widget scrollButton() {
    if(controller.position.extentBefore > 10) {
      return FloatingActionButton(
        onPressed: (){},
      );
    }else{
      return FloatingActionButton(onPressed: (){}, child: Icon(Icons.abc),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: scrollButton(),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification:(overScroll) {
            overScroll.disallowIndicator();
            return true;
          },
          child: ListView.builder(
            controller: controller,
            itemCount: lista.length,
            itemBuilder: (context, index) => lista[index],
          ),
        ),
      ),
    );
  }
}

class DogFid extends StatelessWidget {
  final List<Dog> dogs = [];

  DogFid({super.key}) {
    dogs.add(Dogs.lapa);
    dogs.add(Dogs.roberto);
    dogs.add(Dogs.guts);
    dogs.add(Dogs.lapa);
    dogs.add(Dogs.roberto);
    dogs.add(Dogs.guts);
    dogs.add(Dogs.lapa);
    dogs.add(Dogs.roberto);
    dogs.add(Dogs.guts);
    dogs.add(Dogs.lapa);
    dogs.add(Dogs.roberto);
    dogs.add(Dogs.guts);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16/7,
      child: ListView.separated(
        itemCount: dogs.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DogCard(dog: dogs[index]);
        },
        padding: const EdgeInsets.only(bottom: 8),
      ),
    );
  }
}



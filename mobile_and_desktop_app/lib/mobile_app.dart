import 'package:flutter/material.dart';

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mobile"),
      ),
      
      body: Column(
        children: [
          //Retangulo cinza
          Padding(
            padding: EdgeInsets.all(8),
            child: AspectRatio(
              aspectRatio: 16/6,
              child: Container(
                height: 300,
                color: Colors.grey[400],
              ),
            ),
          ),
          //ListView
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder:(context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 200,
                    color: Colors.grey[400]
                  ),
                );
              },
            )
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';

class DesktopApp extends StatelessWidget {
  const DesktopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Desktop"),
      ),

      body: Row(
        children: [
          //App bar
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 200 ,
              color: Colors.grey[400],
            ),
          ),

          Expanded(
            child: Column(
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
            ),
          ),
        ],
      )
    );
  }
}
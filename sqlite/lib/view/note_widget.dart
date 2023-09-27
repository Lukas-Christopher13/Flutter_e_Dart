import 'package:flutter/material.dart';
import '../controller/regas_de_negocio.dart';

class Note extends StatelessWidget {
  final String title;
  final String text;

  const Note({super.key, required this.title, required this.text});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.event_note),
      title: Text(title),
      subtitle: Text(text),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
         PopupMenuItem(
          child: const Text("Apagar"),
          onTap: () => GlobalControler.remove(this),
          ),
        ],
      ),
    );
  }
}
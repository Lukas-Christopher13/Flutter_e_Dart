import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqlite/note_form.dart';
import 'package:sqlite/regas_de_negocio.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: HomePage()
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("NOTAS"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NoteForm()));
          },
          child: const Icon(Icons.add),
        ),
        body: const NoteListView(),
      ),
    );
  }
}

class NoteListView extends StatefulWidget {
  const NoteListView({super.key});

  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  Controler controler = GlobalControler.controler;
  var lembretes = GlobalControler.controler.lembretes.toArray();

  @override
  void initState() {
    super.initState();
    controler.creatNoteList();
    controler.addListener(() {
      setState(() {
        lembretes = GlobalControler.controler.lembretes.toArray();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: lembretes.length,
      itemBuilder: (context, index) {
        return lembretes[index];
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 2,
      ),
    );
  }
}

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

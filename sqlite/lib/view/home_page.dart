import 'package:flutter/material.dart';
import 'note_form.dart';
import '../controller/regas_de_negocio.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lembretes"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NoteForm()));
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return true;
        },
        child: const NoteListView()
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
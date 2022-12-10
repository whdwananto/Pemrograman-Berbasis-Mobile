import 'package:flutter/material.dart';
import 'package:prak_7/db_provider.dart';
import 'package:prak_7/note_add.dart';
import 'package:prak_7/note_detail.dart';
import 'package:prak_7/note_edit.dart';
import 'package:provider/provider.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({Key? key}) : super(key: key);

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Notepad'),
        backgroundColor: Colors.cyan,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black87,
        child: Consumer<DbProvider>(
          builder: (context, provider, child) {
            final notes = provider.notes;

            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return Dismissible(
                  key: Key(note.id.toString()),
                  background: Container(
                    color: Colors.red,
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  confirmDismiss: (DismissDirection direction) async {
                    return await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Hapus Note',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          content: SizedBox(
                            height: 25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Apakah yakin ingin menghapus?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () async {
                                Provider.of<DbProvider>(context, listen: false)
                                    .deleteNote(note.id!);
                                Navigator.pop(context);
                              },
                              child: const Text('Ya'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Tidak'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Card(
                    color: Colors.cyan.shade100,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Text('${note.id}'),
                      title: Text(
                        note.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DetailNote(note: note);
                          },
                        ));
                      },
                      trailing: FittedBox(
                        fit: BoxFit.fill,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return EditNote(note: note);
                                    },
                                  ),
                                );
                              },
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                AlertDialog hapus = AlertDialog(
                                  title: const Text(
                                    'Hapus Note',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  content: SizedBox(
                                    height: 25,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Apakah yakin ingin menghapus?",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () async {
                                        Provider.of<DbProvider>(context,
                                                listen: false)
                                            .deleteNote(note.id!);
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Ya'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Tidak'),
                                    ),
                                  ],
                                );
                                showDialog(
                                  context: context,
                                  builder: (context) => hapus,
                                );
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteAddPage()));
        },
      ),
    );
  }
}

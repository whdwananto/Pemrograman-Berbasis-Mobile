import 'package:flutter/material.dart';
import 'package:prak_7/db_provider.dart';
import 'package:prak_7/note.dart';
import 'package:provider/provider.dart';

class NoteAddPage extends StatefulWidget {
  final Note? note;

  const NoteAddPage({Key? key, this.note}) : super(key: key);

  @override
  State<NoteAddPage> createState() => _NoteAddPageState();
}

class _NoteAddPageState extends State<NoteAddPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Tambah Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Judul',
              ),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Deskripsi',
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                child: const Text('Simpan'),
                onPressed: () async {
                  final note = Note(
                    title: _titleController.text,
                    description: _descriptionController.text,
                  );
                  Provider.of<DbProvider>(context, listen: false).addNote(note);
                  Navigator.pop(context);
                },
              ),
            ),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     child: (widget.note == null) ? Text('Add') : Text('Update'),
            //     onPressed: () {
            //       upsertNote();
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // Future<void> upsertNote() async {
  //   if (widget.note != null) {
  //     _titleController.text = widget.note!.title;
  //     _descriptionController.text = widget.note!.description;
  //     _isUpdate = true;
  //     Navigator.pop(context, _isUpdate);
  //   }
  // }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}

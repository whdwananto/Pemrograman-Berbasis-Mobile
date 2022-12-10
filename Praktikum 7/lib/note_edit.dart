import 'package:flutter/material.dart';
import 'package:prak_7/db_provider.dart';
import 'package:prak_7/note.dart';
import 'package:provider/provider.dart';

class EditNote extends StatefulWidget {
  final Note? note;

  const EditNote({Key? key, this.note}) : super(key: key);

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(widget.note!.id);
    _titleController.text = widget.note!.title;
    _descriptionController.text = widget.note!.description;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Edit Note'),
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
                    id: widget.note!.id!,
                    title: _titleController.text,
                    description: _descriptionController.text,
                  );
                  Provider.of<DbProvider>(context, listen: false)
                      .updateNote(note);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

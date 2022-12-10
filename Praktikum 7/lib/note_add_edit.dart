import 'package:flutter/material.dart';

import 'note.dart';

class NoteAddEditPage extends StatefulWidget {
  final Note? note;
  const NoteAddEditPage({Key? key, this.note}) : super(key: key);

  @override
  State<NoteAddEditPage> createState() => _NoteAddEditPageState();
}

class _NoteAddEditPageState extends State<NoteAddEditPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
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
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: (widget.note == null)
                  ? const Text('Tambah')
                  : const Text('Update'),
              onPressed: () async {},
            ),
          ),
        ],
      ),
    );
  }

  Future<void> upsertNote() async {
    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _descriptionController.text = widget.note!.description;
    } else {}
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}

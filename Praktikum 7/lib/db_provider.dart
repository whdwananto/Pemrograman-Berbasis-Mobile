import 'package:flutter/foundation.dart';
import 'package:prak_7/note.dart';
import 'database_helper.dart';

class DbProvider extends ChangeNotifier {
  late DatabaseHelper _dbHelper;

  List<Note> _notes = [];

  List<Note> get notes => _notes;

  DbProvider() {
    _dbHelper = DatabaseHelper();
    _getAllNotes();
  }

  void _getAllNotes() async {
    _notes = await _dbHelper.getNotes();
    notifyListeners();
  }

  Future<void> addNote(Note note) async {
    await _dbHelper.insertNote(note);
    _getAllNotes();
  }

  Future<void> deleteNote(int id) async {
    await _dbHelper.deleteNote(id);
    _getAllNotes();
  }

  Future<void> updateNote(Note note) async {
    await _dbHelper.updateNote(note);
    _getAllNotes();
  }
}

import 'dart:developer';

import 'package:note_app/data/database/note_db.dart';
import 'package:note_app/data/model/note_model.dart';
import 'package:note_app/data/repository/note_repository.dart';

class NoteRepositoryImpl extends NoteDB implements NoteRepository {
  @override
  Future<bool> deleteNote(int id) async {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<List<NoteModel>> getAllNotes(filter) async {
    await super.init().then((value) => log("Database path: ${value.path}"));
    throw UnimplementedError();
  }

  @override
  Future<bool> insertNote(NoteModel model) async {
    // TODO: implement insertNote
    throw UnimplementedError();
  }

  @override
  Future<bool> updateNote(int id, NoteModel model) async {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}

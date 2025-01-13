import 'package:note_app/data/model/note_model.dart';

abstract class NoteRepository {
  Future<bool> insertNote(NoteModel model);
  Future<List<NoteModel>> getAllNotes(filter);
  // List<NoteModel> sortData(filter);
  Future<bool> updateNote(int id, NoteModel model);
  Future<bool> deleteNote(int id);
}


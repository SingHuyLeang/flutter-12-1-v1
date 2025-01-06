import 'package:note_app/utils/constants/keys.dart';

class NoteModel {
  int? id;
  String title;
  String content;
  DateTime? dateTime;

  NoteModel({
    this.id,
    required this.title,
    required this.content,
    this.dateTime,
  });

  Map<String, dynamic> toMap() => {
    NoteKeys.id: id,
    NoteKeys.title: title,
    NoteKeys.content: content,
    NoteKeys.dateTime: dateTime,
  };
}

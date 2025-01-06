import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/data/model/note_model.dart';
import 'package:note_app/ui/screens/form_screen.dart';

class NoteController extends GetxController {
  final notes = <NoteModel>[
    NoteModel(
        id: 1, title: 'Note 1', content: 'Content 1', dateTime: DateTime.now()),
    NoteModel(
        id: 2, title: 'Note 2', content: 'Content 2', dateTime: DateTime.now()),
    NoteModel(
        id: 3, title: 'Note 3', content: 'Content 3', dateTime: DateTime.now()),
    NoteModel(
        id: 4, title: 'Note 4', content: 'Content 4', dateTime: DateTime.now()),
    NoteModel(
        id: 5, title: 'Note 5', content: 'Content 5', dateTime: DateTime.now()),
  ].obs;

  final txtTitleCtrl = TextEditingController();
  final txtContentCtrl = TextEditingController();

  void viewCard(int index) async {
    txtTitleCtrl.text = notes[index].title;
    txtContentCtrl.text = notes[index].content;

    Get.to(() => FormScreen());
    update();
  }

  void toBack() {
    txtTitleCtrl.clear();
    txtContentCtrl.clear();

    Get.back();
    update();
  }
}

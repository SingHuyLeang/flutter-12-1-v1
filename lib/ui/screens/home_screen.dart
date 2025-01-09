import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:note_app/data/controller/note_controller.dart';
import 'package:note_app/ui/colors/colors.dart';
import 'package:note_app/ui/components/app_text_field.dart';
import 'package:note_app/ui/screens/form_screen.dart';
import 'package:note_app/ui/typography/typographies.dart';
import 'package:note_app/utils/devices/device_utility.dart';
import 'package:note_app/utils/formatters/date_time_formatter.dart';
import 'package:popover/popover.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final noteCtrl = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            'Note',
            style: typographies.display(
              fontWeight: FontWeight.w700,
              color: AppColors.dark,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: PopupMenuButton<String>(
                icon: SvgPicture.asset('assets/icons/menu-two-line.svg'),
                onSelected: (value) => log(value),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: "Sort By Name",
                    child: Text(
                      "Sort by Name",
                      style: typographies.label(fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: "Sort By Date",
                    child: Text(
                      "Sort by Date",
                      style: typographies.label(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: () => Get.to(() => FormScreen()),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primary,
            child: SvgPicture.asset('assets/icons/task-add.svg'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppTextField(height: 35, hintText: "Search"),
              const SizedBox(height: 16),
              ...List.generate(
                noteCtrl.notes.length,
                (index) => Slidable(
                  endActionPane: ActionPane(
                    extentRatio: 1 / 5,
                    motion: const ScrollMotion(),
                    children: [
                      Container(
                        width: 70,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.denger,
                        ),
                        child: SvgPicture.asset('assets/icons/delete.svg'),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () async => noteCtrl.viewCard(index),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      height: Resize(context).height(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.primary.withOpacity(0.02),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noteCtrl.notes[index].title,
                            style: typographies.paragraph(
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "${DTF(noteCtrl.notes[index].dateTime!).toShortDate()}  ${noteCtrl.notes[index].content}",
                            style: typographies.label(),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry A')),
            ),
          ),
          const Divider(),
          Container(
            height: 50,
            color: Colors.amber[200],
            child: const Center(child: Text('Entry B')),
          ),
          const Divider(),
          Container(
            height: 50,
            color: Colors.amber[300],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}

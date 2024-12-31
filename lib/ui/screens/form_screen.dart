import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/ui/colors/colors.dart';
import 'package:note_app/ui/components/app_text_field.dart';
import 'package:note_app/ui/typography/typographies.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios, size: 20),
              ),
              GestureDetector(
                onTap: () => Get.back(),
                child: Text(
                  'Save',
                  style: typographies.paragraph(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              AppTextField(
                height: 35,
                isBlankStyle: true,
                hintText: "title",
                style: typographies.title(color: AppColors.dark),
                maxLength: 50,
                hintStyle:
                    typographies.title(color: AppColors.dark.withOpacity(0.6)),
              ),
              AppTextField(
                isBlankStyle: true,
                hintText: "paragraph",
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

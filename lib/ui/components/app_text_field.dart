import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_app/ui/colors/colors.dart';
import 'package:note_app/ui/typography/typographies.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      padding: const EdgeInsets.only(right: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        style: typographies.paragraph(color: AppColors.dark),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 13),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          hintText: "Search",
          hintStyle: typographies.paragraph(
            color: AppColors.dark.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}

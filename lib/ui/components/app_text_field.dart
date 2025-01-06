import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_app/ui/colors/colors.dart';
import 'package:note_app/ui/typography/typographies.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.isBlankStyle = false,
    this.height,
    this.hintText,
    this.style,
    this.hintStyle,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
    this.controller,
  });

  final TextEditingController? controller;
  final bool isBlankStyle;
  final double? height;
  final String? hintText;
  final TextStyle? style, hintStyle;
  final TextInputType? keyboardType;
  final int? maxLines, maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.only(right: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      decoration: !isBlankStyle
          ? BoxDecoration(
              color: AppColors.primary.withOpacity(0.05),
              borderRadius: BorderRadius.circular(6),
            )
          : null,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        maxLength: maxLength,
        buildCounter: (
          context, {
          required currentLength,
          required isFocused,
          required maxLength,
        }) =>
            null,
        style: style ?? typographies.paragraph(color: AppColors.dark),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 13),
          prefixIcon: !isBlankStyle
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                  ),
                )
              : null,
          hintText: hintText,
          hintStyle: hintStyle ??
              typographies.paragraph(
                color: AppColors.dark.withOpacity(0.6),
              ),
        ),
      ),
    );
  }
}

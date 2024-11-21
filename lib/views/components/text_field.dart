import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orif_coffee/views/components/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary.withOpacity(0.3),
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(
          fontFamily: "pp",
          fontSize: 16,
          color: AppColors.dark,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              "assets/images/search.svg",
            ),
          ),
          hintText: "Search your drink or food",
          hintStyle: TextStyle(
            fontFamily: "pp",
            fontSize: 16,
            color: AppColors.dark.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}

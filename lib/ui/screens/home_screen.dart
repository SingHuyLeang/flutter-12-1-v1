import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_app/ui/colors/colors.dart';
import 'package:note_app/ui/components/app_text_field.dart';
import 'package:note_app/ui/typography/typographies.dart';
import 'package:note_app/utils/devices/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: SvgPicture.asset('assets/icons/menu-two-line.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppTextField(),
            const SizedBox(height: 16),
            ...List.generate(
              10,
              (index) => Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                height: Resize(context).height(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.primary.withOpacity(0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Here my text title!",
                      style: typographies.title(),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Here my text paragraph!",
                      style: typographies.paragraph(),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

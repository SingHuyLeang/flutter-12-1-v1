import 'package:flutter/material.dart';
import 'package:orif_coffee/views/components/styles.dart';

import '../controller/product_controller.dart';
import 'components/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productCtrl = ProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                "WELCOME TO ORIF COFFEE",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF4C7766),
              ),
              const SizedBox(height: 14),
              AppText(
                "Find your favorite & take your order",
                fontSize: 14,
              ),
              const SizedBox(height: 32),
              AppTextField(),
            ],
          ),
        ),
      ),
    );
  }
}

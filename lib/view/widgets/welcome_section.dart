import 'package:design_up/view/widgets/label.dart';
import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Label(
          text: 'Welcome to the Ordering!',
          fontFamily: Onest.semiBold,
          fontSize: 16,
        ),
        Label(
          text: 'Now order what you want by yourself',
        ),
      ],
    );
  }
}

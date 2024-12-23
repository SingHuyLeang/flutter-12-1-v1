import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final ProductController productController;

  const HeaderSection({super.key,required this.productController});

  @override
  Widget build(BuildContext context) {
    final isSearchActive = productController.textCtrl.text.isNotEmpty;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Label(
          text: 'All Products ${isSearchActive ? "Of \"${productController.textCtrl.text}\"" : ""}',
          fontFamily: Onest.light,
          fontSize: 13,
        ),
        if (isSearchActive)
          GestureDetector(
            onTap: productController.clear,
            child: const Label(
              text: "Clear",
              fontFamily: Onest.light,
            ),
          ),
      ],
    );
  }
}

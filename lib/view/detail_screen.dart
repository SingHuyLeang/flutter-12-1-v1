import 'package:design_up/model/product_model.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Label(text: product.name),
            ],
          ),
        ),
      ),
    );
  }
}

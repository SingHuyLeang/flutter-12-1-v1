import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/model/product_model.dart';
import 'package:design_up/view/detail_screen.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:design_up/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductGrid extends StatelessWidget {
  final List<ProductModel> products;
  final bool isSearchActive;

  ProductGrid({
    super.key,
    required this.products,
    required this.isSearchActive,
  });

  final productController = ProductController();

  @override
  Widget build(BuildContext context) {
    if (isSearchActive && products.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(top: 80.0),
        child: Center(
          child: Label(
            text: 'Not Found',
            fontFamily: Onest.bold,
          ),
        ),
      );
    }

    return BlocBuilder<ProductController, List<ProductModel>>(
        builder: (context, products) {
      return GridView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 260,
          mainAxisSpacing: 32,
          crossAxisSpacing: 24,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(index: index),
              ),
            ),
            toogleFavorite: () =>
                context.read<ProductController>().toogleFavorite(index),
            product: product,
          );
        },
      );
    });
  }
}

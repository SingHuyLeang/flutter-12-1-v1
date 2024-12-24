import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/model/product_model.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductController, List<ProductModel>>(
        builder: (context, products) {
      final product = products[index];
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.adaptive.arrow_back, color: AppColor.light),
          ),
          title: Text(product.name),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  product.image,
                ),
                const Gap(16),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Label(
                            text: "\$ ${product.price}",
                            fontSize: 20,
                            fontFamily: Onest.semiBold,
                          ),
                          GestureDetector(
                            onTap: () => context
                                .read<ProductController>()
                                .toogleFavorite(index),
                            child: product.favorite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red[400],
                                    size: 18,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                  ),
                          ),
                        ],
                      ),
                      const Gap(8),
                      Label(
                        text: product.description,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

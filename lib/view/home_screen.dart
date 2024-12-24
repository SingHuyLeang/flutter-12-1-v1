import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/model/product_model.dart';
import 'package:design_up/view/widgets/header_section.dart';
import 'package:design_up/view/widgets/input_text.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:design_up/view/widgets/product_grid.dart';
import 'package:design_up/view/widgets/welcome_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductController, List<ProductModel>>(
      builder: (context, products) {
        final productController = context.read<ProductController>();
        final isSearchActive    = productController.textCtrl.text.isNotEmpty;
        final displayedProducts = isSearchActive ? productController.results : products;

        return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: const Text("The Ordering"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(24),
                  const WelcomeSection(),
                  const Gap(16),
                  const Label(
                    text: 'Find what you want',
                    fontFamily: Onest.light,
                    fontSize: 13,
                  ),
                  const Gap(4),
                  InputText(
                    controller: productController.textCtrl,
                    onTap: productController.filterProducts,
                    onSubmitted: (_) => productController.filterProducts(),
                    onChanged: (_) => productController.filterProducts(),
                  ),
                  const Gap(32),
                  HeaderSection(productController: productController),
                  const Gap(16),
                  ProductGrid(
                    products: displayedProducts,
                    isSearchActive: isSearchActive,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
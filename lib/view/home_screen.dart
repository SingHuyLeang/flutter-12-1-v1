import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/model/product_model.dart';
import 'package:design_up/view/detail_screen.dart';
import 'package:design_up/view/widgets/input_text.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:design_up/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductController, List<ProductModel>>(
        builder: (cubit, products) {
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text("The Ordering"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(24),
                const Label(
                  text: 'Welcome to the Ordering!',
                  fontFamily: Onest.semiBold,
                  fontSize: 16,
                ),
                const Label(
                  text: 'Now order what you want by yourself',
                ),
                const Gap(16),
                const Label(
                  text: 'Find what you want',
                  fontFamily: Onest.light,
                  fontSize: 13,
                ),
                const Gap(4),
                InputText(
                  controller: cubit.read<ProductController>().textCtrl,
                  onTap: () => cubit.read<ProductController>().filterProducts(),
                  onSubmitted: (_) =>
                      cubit.read<ProductController>().filterProducts(),
                  onChanged: (_) =>
                      cubit.read<ProductController>().filterProducts(),
                ),
                const Gap(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Label(
                      text:
                          'All Products ${cubit.read<ProductController>().textCtrl.text.isNotEmpty ? "Of \"${cubit.read<ProductController>().textCtrl.text}\"" : ""}',
                      fontFamily: Onest.light,
                      fontSize: 13,
                    ),
                    GestureDetector(
                      onTap: ()=> cubit.read<ProductController>().clear(),
                      child: Label(
                        text: cubit
                                .read<ProductController>()
                                .textCtrl
                                .text
                                .isNotEmpty
                            ? "Clear"
                            : "",
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                if (cubit.read<ProductController>().textCtrl.text.isNotEmpty &&
                    cubit.read<ProductController>().results.isEmpty)
                  const Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Center(
                      child: Label(
                        text: 'Not Found',
                        fontFamily: Onest.bold,
                      ),
                    ),
                  )
                else
                  GridView.builder(
                    itemCount: cubit.read<ProductController>().results.isEmpty
                        ? products.length
                        : cubit.read<ProductController>().results.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 260,
                      mainAxisSpacing: 32,
                      crossAxisSpacing: 24,
                    ),
                    itemBuilder: (context, index) {
                      final product =
                          cubit.read<ProductController>().results.isEmpty
                              ? products[index]
                              : cubit.read<ProductController>().results[index];
                      return ProductCard(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(product: product),
                          ),
                        ),
                        product: product,
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/view/detail_screen.dart';
import 'package:design_up/view/widgets/input_text.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:design_up/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ProductController();

  @override
  Widget build(BuildContext context) {
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
                controller: controller.textCtrl,
                onTap: () => setState(() {
                  controller.filterProducts();
                }),
                onSubmitted: (_) => setState(() {
                  controller.filterProducts();
                }),
                onChanged: (_) => setState(() {
                  controller.filterProducts();
                }),
              ),
              const Gap(32),
              Label(
                text:
                    'All Products ${controller.textCtrl.text.isNotEmpty ? "Of \"${controller.textCtrl.text}\"" : ""}',
                fontFamily: Onest.light,
                fontSize: 13,
              ),
              const Gap(16),
              if (controller.results.isEmpty)
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
                  itemCount: controller.results.isEmpty
                      ? controller.products.length
                      : controller.results.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 260,
                    mainAxisSpacing: 32,
                    crossAxisSpacing: 24,
                  ),
                  itemBuilder: (context, index) {
                    final product = controller.results.isEmpty
                        ? controller.products[index]
                        : controller.results[index];
                    return ProductCard(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(product: product),
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
  }
}

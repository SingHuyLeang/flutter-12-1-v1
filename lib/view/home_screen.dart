import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/model/product_model.dart';
import 'package:design_up/view/detail_screen.dart';
import 'package:design_up/view/widgets/input_text.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:design_up/view/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textCtrl = TextEditingController();
  void Function()? onTap;
  void Function(String)? onSubmitted;

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
              InputText(controller: textCtrl),
              const Gap(32),
              const Label(
                text: 'All Products',
                fontFamily: Onest.light,
                fontSize: 13,
              ),
              const Gap(16),
              GridView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 260,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 24,
                ),
                itemBuilder: (context, index) => ProductCard(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(product: controller.products[index]),
                    ),
                  ),
                  product: controller.products[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

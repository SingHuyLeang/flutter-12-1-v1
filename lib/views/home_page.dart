import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:orif_coffee/views/components/app_slider.dart';
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

  final sugar = <double>[];

  @override
  void initState() {
    super.initState();
    sugar.clear();
    for (var i = 0; i < productCtrl.products.length; i++) {
      sugar.add(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 32,
              left: 16,
              right: 16,
              bottom: 32,
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
                const AppTextField(),
                const SizedBox(height: 32),
                AppText("All"),
                const SizedBox(height: 22),
                GridView.builder(
                  itemCount: productCtrl.products.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 3,
                    childAspectRatio: 9 / 16,
                  ),
                  itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              productCtrl.products[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    productCtrl.products[index].name.length < 15
                                        ? productCtrl.products[index].name
                                        : "${productCtrl.products[index].name.substring(0, 14)}...",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: AppText(
                                      productCtrl.products[index].sizes[0],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: AppSlider(
                                      onChanged: (value) => setState(() {
                                        sugar[index] = value;
                                      }),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  AppText(
                                    sugar[index].toStringAsFixed(0),
                                    textAlign: TextAlign.right,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: AppColors.primary,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    "\$ ${productCtrl.products[index].price[0]}",
                                  ),
                                  Row(
                                    children: [
                                      // decrement
                                      Image.asset("assets/images/remove.png"),
                                      const SizedBox(width: 10),
                                      // qty
                                      AppText(0.toString()),
                                      const SizedBox(width: 10),
                                      // increment
                                      Image.asset("assets/images/plus.png"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

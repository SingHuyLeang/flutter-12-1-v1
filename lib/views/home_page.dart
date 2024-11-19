import 'dart:developer';

import 'package:flutter/material.dart';

import '../controller/product_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final productCtrl = ProductController();
  
  @override
  void initState() {
    log(productCtrl.products.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

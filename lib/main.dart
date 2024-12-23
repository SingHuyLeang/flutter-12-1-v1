import 'package:design_up/controller/product_controller.dart';
import 'package:design_up/view/home_screen.dart';
import 'package:design_up/view/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.dark,
            titleTextStyle: TextStyle(
              color: AppColor.light,
              fontSize: 20,
              fontFamily: Onest.semiBold,
            ),
            elevation: 10,
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

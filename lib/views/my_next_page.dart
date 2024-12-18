import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_management_test/controller/cubit/counter_controller.dart';

class MyNextPage extends StatelessWidget {
  const MyNextPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterController>(builder: (_, controller, widget) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.decrement(),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      );
    });
  }
}

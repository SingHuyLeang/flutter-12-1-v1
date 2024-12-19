import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_test/controller/counter_controller.dart';

class MyNextPage extends StatelessWidget {
  MyNextPage({super.key, required this.title});

  final String title;

  final state = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
                '${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => state.decrement(),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ),
    );
  }
}

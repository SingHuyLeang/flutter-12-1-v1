import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_test/controller/counter_controller.dart';
import 'package:state_management_test/views/my_next_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final state = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (state) {
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
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 64),
                CupertinoButton(
                  color: Colors.deepPurple[200],
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyNextPage(
                        title: "Flutter Demo Next Page",
                      ),
                    ),
                  ),
                  child: const Text(
                    'Watch the next page.',
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => state.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

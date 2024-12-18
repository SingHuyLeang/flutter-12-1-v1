import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_management_test/controller/cubit/counter_controller.dart';
import 'package:state_management_test/views/my_next_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterController>(
      builder: (_, controller, widget) {
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
                const SizedBox(height: 64),
                CupertinoButton(
                  color: Colors.deepPurple[200],
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyNextPage(
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
            onPressed: () => controller.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

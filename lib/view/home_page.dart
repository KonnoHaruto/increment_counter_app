import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:increment_counter_app/view_model/home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    //更新
    final notifier = watch(counterProvider);
    //Providerを読み取る
    final viewModel = watch(counterProvider.notifier);
    //counterを読み取り
    final counter = notifier.counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Couter_App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$counter', style: const TextStyle(fontSize: 50)),
            ElevatedButton(
              onPressed: () => {
                viewModel.decrement(),
              },
              child: const Text('decrement'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          viewModel.increment(),
        },
        tooltip: 'increment!',
        child: const Icon(Icons.add),
      ),
    );
  }
}

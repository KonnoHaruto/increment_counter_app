import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:increment_counter_app/view_model/home_page_view_model.dart';

class HomePage extends ConsumerWidget {
  //コンストラクタ superはスーパークラスのそれ
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    //更新
    // final state = watch(counterProvider);
    //Providerを読み取る
    // final viewModel = watch(counterProvider.notifier);
    //counterを読み取り
    // final counter = state.counter;

    final counter = watch(counterProvider);
    final count = counter.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Couter_App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$count',
                style: const TextStyle(
                  fontSize: 50,
                )),
            ElevatedButton(
              onPressed: () => counter.state--,
              child: const Text('decrement'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.state++,
        tooltip: 'increment!',
        child: const Icon(Icons.add),
      ),
    );
  }
}

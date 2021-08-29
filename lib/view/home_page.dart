import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // HomePageState
    final pageState = ref.watch(homePageNotifierProvider);
    // HomePageNotifier
    final pageNotifier = ref.watch(homePageNotifierProvider.notifier);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: pageNotifier.resetAllCount,
        child: Icon(Icons.exposure_zero),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('MainCount ${pageState.mainCount}'),
            onTap: pageNotifier.increaseMainCount,
          ),
          ListTile(
            title: Text('SubCount ${pageState.subCount}'),
            onTap: pageNotifier.increaseSubCount,
          ),
        ],
      ),
    );
  }
}

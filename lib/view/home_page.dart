import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:increment_counter_app/view_model/home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    //更新
    final counter = watch(counterProvider);
    //Providerを読み取る
    final notifier = watch(counterProvider.notifier);
    return const Scaffold(
        //TODO make UI
        );
  }
}

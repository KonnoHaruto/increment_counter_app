import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:increment_counter_app/model/home_page_state.dart';

//Providerの定数をグローバルに宣言
//StateNotifierProviderに続けてNotifierクラスの型と、格納する状態の型を明示する
final counterProvider =
    //autoDispose修飾子でProviderを破棄
    StateNotifierProvider.autoDispose<HomePageNotifier, Counter>(
  (ref) => HomePageNotifier(),
);

class HomePageNotifier extends StateNotifier<Counter> {
  //コンストラクター
  HomePageNotifier() : super(const Counter());

  //カウンターををインクリメント
  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }

  //カウンターをデクリメント
  void decrement() {
    state = state.copyWith(counter: state.counter - 1);
  }
}

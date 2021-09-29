import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:increment_counter_app/model/counter.dart';

//Providerの定数をグローバルに宣言
//StateNotifierProviderに続けてNotifierクラスの型と、格納する状態の型を明示する
/*final counterProvider =
    StateNotifierProvider.autoDispose<HomePageViewModel, Counter>(
  (ref) => HomePageViewModel(),
);

class HomePageViewModel extends StateNotifier<Counter> {
  //コンストラクター
  HomePageViewModel() : super(const Counter());

  //カウンターををインクリメント
  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }

  //カウンターをデクリメント
  void decrement() {
    state = state.copyWith(counter: state.counter - 1);
  }
}
*/

final counterProvider = StateProvider((ref) => 0);
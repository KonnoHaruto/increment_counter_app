import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:increment_counter_app/model/home_page_state.dart';
import 'home_page_state.dart';

final homePageNotifierProvider =
    StateNotifierProvider.autoDispose<HomePageNotifier, HomePageState>((ref) {
      //Readerを渡す
      return HomePageNotifier(ref.read);
    });

class HomePageNotifier extends StateNotifier<HomePageState> {
  HomePageNotifier(this._read) : super(const HomePageState());
  //Reader型を持っておくことでHomePageNotifierから他のProviderを読み取ることができるようになる
  final Reader _read;

  //　メインカウントを＋1する
  // copyWith →　nullを割り当てることが可能な複製メソッド
  <void> increaseMainCount() async {
    state = state.copyWith(mainCount: state.mainCount++);
  }

  <void> increaseSubCount() async {
    state = state.copyWith(subCount: state.subCount++);
  }

  <void> resetAllCount() async {
    state = state.copyWith(
      mainCount: 0,
      subCount: 0,
    );
  }

}

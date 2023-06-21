import 'package:hooks_riverpod/hooks_riverpod.dart' show StateNotifier;

class OnBoardingStateNotifier extends StateNotifier<int> {
  OnBoardingStateNotifier() : super(0);
  void setIndex(int index) {
    state = index;
  }
}

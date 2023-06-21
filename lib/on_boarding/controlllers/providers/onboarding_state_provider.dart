import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/on_boarding/controlllers/notifiers/onboarding_notifier.dart';

final onBoardingStateProvider =
    StateNotifierProvider<OnBoardingStateNotifier, int>(
        (ref) => OnBoardingStateNotifier());

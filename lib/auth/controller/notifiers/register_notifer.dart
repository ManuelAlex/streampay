import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/auth/models/auth_state.dart';

class RegisterStateNotifer extends StateNotifier<AuthState> {
  RegisterStateNotifer()
      : super(
          AuthState.initial(),
        );

  void seeIcon() {
    state.flipPassIcon = !state.flipPassIcon;
    state = AuthState(
      flipPassIcon: state.flipPassIcon,
      isLoading: state.isLoading,
      isPressedConnetWallet: state.isPressedConnetWallet,
    );
  }

  void setConnetWallet() {
    state.isPressedConnetWallet = !state.isPressedConnetWallet;
    state = AuthState(
      flipPassIcon: state.flipPassIcon,
      isLoading: state.isLoading,
      isPressedConnetWallet: state.isPressedConnetWallet,
    );
  }
}

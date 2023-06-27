import 'package:flutter/material.dart' show TextEditingController;
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
      isEmptyTextField: state.isEmptyTextField,
      isPressedConnetWallet: state.isPressedConnetWallet,
    );
  }

  void setConnetWallet() {
    state.isPressedConnetWallet = !state.isPressedConnetWallet;
    state = AuthState(
      flipPassIcon: state.flipPassIcon,
      isLoading: state.isLoading,
      isEmptyTextField: state.isEmptyTextField,
      isPressedConnetWallet: state.isPressedConnetWallet,
    );
  }

  void isEmptyTextField(TextEditingController textController, int index) {
    final List<bool> updatedList = List.from(state.isEmptyTextField);

    if (textController.text.isEmpty) {
      updatedList[index] = true;
    } else {
      updatedList[index] = false;
    }

    state = AuthState(
      flipPassIcon: state.flipPassIcon,
      isLoading: state.isLoading,
      isEmptyTextField: updatedList,
      isPressedConnetWallet: state.isPressedConnetWallet,
    );
  }
}

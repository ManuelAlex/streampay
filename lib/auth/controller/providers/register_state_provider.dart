import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/auth/controller/notifiers/register_notifer.dart';
import 'package:stream_pay/auth/models/auth_state.dart';

final registerStateProvider =
    StateNotifierProvider<RegisterStateNotifer, AuthState>(
  (_) => RegisterStateNotifer(),
);

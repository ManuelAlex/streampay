import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/auth/controller/providers/register_state_provider.dart';

final isTextFieldEmptyProvider = Provider<List<bool>>((ref) {
  return ref.watch(registerStateProvider).isEmptyTextField;
});

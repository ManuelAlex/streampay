import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/auth/controller/providers/register_state_provider.dart';

extension ShowBottomSheet on Widget {
  showBottomSheetWidget(
    BuildContext context,
    Widget widget,
    WidgetRef? ref,
  ) {
    bool setter;
    ref == null ? setter = false : setter = true;
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return widget;
      },
    ).whenComplete(() {
      setter
          ? ref!.watch(registerStateProvider.notifier).setConnetWallet()
          : true;
    });
  }
}

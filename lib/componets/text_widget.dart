import 'package:flutter/material.dart';
import 'package:stream_pay/resources/value_manager.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontSize: AppSize.s14),
    );
  }
}

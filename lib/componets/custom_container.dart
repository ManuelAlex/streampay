import 'package:flutter/material.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s16),
        color: ColorManager.white.withOpacity(0.15),
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  const CustomContainer({
    required this.child,
    this.height = double.infinity,
    this.width = double.infinity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s16),
        color: ColorManager.white.withOpacity(0.15),
      ),
      child: child,
    );
  }
}

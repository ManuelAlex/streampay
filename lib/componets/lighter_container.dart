import 'package:flutter/material.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class CustomLighterContainer extends StatelessWidget {
  final Widget child;
  final bool isWallet;
  final double height;
  const CustomLighterContainer(
      {Key? key,
      required this.child,
      this.isWallet = false,
      this.height = AppSize.s60})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppSize.s10),
        border: isWallet ? Border.all(color: ColorManager.primary2) : null,
      ),
      child: child,
    );
  }
}

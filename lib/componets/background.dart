import 'package:flutter/material.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  final bool shouldClip;

  const BackGround({
    required this.child,
    this.shouldClip = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManager.primary.withOpacity(0.1),
            ColorManager.redPink.withOpacity(0.1),
            ColorManager.background.withOpacity(0.2),
            ColorManager.primary.withOpacity(0.2)
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius:
            shouldClip ? BorderRadiusDirectional.circular(AppSize.s16) : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s26),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_pay/componets/text_widget.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class BackGround extends StatelessWidget {
  final Widget child;

  const BackGround({required this.child, Key? key}) : super(key: key);

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
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s26),
        child: child,
      ),
    );
  }
}

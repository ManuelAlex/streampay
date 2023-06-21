import 'package:flutter/material.dart';
import 'package:stream_pay/resources/value_manager.dart';

class CircleDot extends StatelessWidget {
  final Color color;

  const CircleDot({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s6),
      child: Container(
        height: AppSize.s8,
        width: AppSize.s8,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

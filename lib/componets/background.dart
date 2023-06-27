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
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF212147), Color(0xFF0C0C20)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Stack(
        children: [
          CustomPosition(
            left: AppSize.s_90,
            right: AppSize.s239,
            color: ColorManager.backGroundPink.withOpacity(0.7),
            height: 175,
            width: 176,
          ),
          CustomPosition(
            left: 136,
            right: 301,
            color: ColorManager.backGroundPurple1,
            height: 293,
            width: 293,
          ),
          CustomPosition(
            left: 57,
            right: 662,
            color: ColorManager.backGroundPurple2,
            height: 337,
            width: 335,
          ),
          CustomPosition(
            left: 87,
            right: 407,
            color: ColorManager.backGroundAsh,
            height: 135,
            width: 135,
          ),
          Container(
            color: ColorManager.primary.withOpacity(0.7),
          ),
          child,
        ],
      ),
    );
  }
}

class CustomPosition extends StatelessWidget {
  final double left;
  final double right;
  final Color color;
  final double height;
  final double width;
  const CustomPosition({
    required this.left,
    required this.right,
    required this.color,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: right,
      child: Transform(
        transform: Matrix4.identity()
          ..translate(AppSize.s0, AppSize.s0)
          ..rotateZ(-AppSize.s51),
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return RadialGradient(
              colors: [color, Colors.transparent],
              stops: [0.1, 0.9],
              radius: 0.5,
              center: Alignment.center,
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/on_boarding/controlllers/providers/onboarding_state_provider.dart';
import 'package:stream_pay/on_boarding/view/extensions/index_to_slider.dart';
import 'package:stream_pay/on_boarding/view/widget/circle_dot.dart';
import 'package:stream_pay/on_boarding/view/widget/onboarding_slider.dart';
import 'package:stream_pay/resources/color_manager.dart';

class OnBoardingView extends ConsumerWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Stack(
      children: [
        PageView.builder(
          itemBuilder: (context, index) {
            return OnBoardingSlider(
              sliderModel: index.indexToSliderModel(),
            );
          },
          onPageChanged: (value) {
            ref.read(onBoardingStateProvider.notifier).setIndex(value);
          },
          itemCount: 3,
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 0.2,
              heightFactor: 0.45,
              child: Row(
                children: [
                  for (int i = 0; i <= 2; i++) _getWidget(i, ref),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _getWidget(int index, WidgetRef ref) {
    int currentIndex = ref.watch(onBoardingStateProvider);
    if (index == currentIndex) {
      return CircleDot(color: ColorManager.blueButton);
    } else {
      return CircleDot(color: ColorManager.greyText);
    }
  }
}

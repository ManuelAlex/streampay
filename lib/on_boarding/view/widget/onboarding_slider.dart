import 'package:flutter/material.dart';
import 'package:stream_pay/on_boarding/models/slider_model.dart';
import 'package:stream_pay/on_boarding/view/const/onboarding_string.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class OnBoardingSlider extends StatelessWidget {
  final SliderModel sliderModel;
  const OnBoardingSlider({
    required this.sliderModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(sliderModel.imgUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              flex: 5,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSize.s26, right: AppSize.s26),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        sliderModel.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        sliderModel.subtitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: AppSize.s100,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: const Text(OnBoardingStringConst.getStarted),
                      ),
                      const SizedBox(
                        height: AppSize.s16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(OnBoardingStringConst.alreadyHaveAccount,
                              style: Theme.of(context).textTheme.bodySmall),
                          const SizedBox(
                            width: AppSize.s16,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(OnBoardingStringConst.login,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: ColorManager.blueButton,
                                    )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stream_pay/on_boarding/view/const/onboarding_string.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorManager.blueButton,
                  )),
        )
      ],
    );
  }
}

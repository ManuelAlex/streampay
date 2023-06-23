import 'package:flutter/material.dart';
import 'package:stream_pay/auth/view/constants/register_const.dart';
import 'package:stream_pay/componets/text_widget.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class DividerWithOR extends StatelessWidget {
  const DividerWithOR({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSize.s4,
          right: AppSize.s22,
          top: AppSize.s16,
          bottom: AppSize.s16),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Divider(
                color: ColorManager.greyText,
              ),
            ),
            const SizedBox(
              width: AppPadding.p8,
            ),
            const TextWidget(text: RegisterConst.or),
            const SizedBox(
              width: AppPadding.p8,
            ),
            Expanded(
              child: Divider(
                color: ColorManager.greyText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

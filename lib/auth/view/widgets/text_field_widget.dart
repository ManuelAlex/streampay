import 'package:flutter/material.dart';
import 'package:stream_pay/auth/controller/providers/register_state_provider.dart';
import 'package:stream_pay/auth/view/constants/register_const.dart';
import 'package:stream_pay/componets/text_widget.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomTextFeild extends HookConsumerWidget {
  final String text;
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  const CustomTextFeild({
    Key? key,
    required this.text,
    required this.hintText,
    required this.textEditingController,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final textController = textEditingController;
    return Padding(
      padding: const EdgeInsets.only(top: AppSize.s20, right: AppSize.s20),
      child: SizedBox(
        height: AppSize.s74,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: text,
            ),
            const SizedBox(
              height: AppSize.s8,
            ),
            Container(
              height: AppSize.s48,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
              child: TextField(
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: ColorManager.white, fontSize: AppSize.s14),
                  controller: textController,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: AppPadding.p16, top: AppPadding.p12),
                    hintText: hintText,
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: AppSize.s14),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.primary2),
                    ),
                  ),
                  keyboardType: textInputType,
                  obscureText: !ref.watch(registerStateProvider).flipPassIcon),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPasswordTextFeild extends HookConsumerWidget {
  final TextEditingController textEditingController;

  const CustomPasswordTextFeild({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final textController = textEditingController;
    return Padding(
      padding: const EdgeInsets.only(top: AppSize.s20, right: AppSize.s20),
      child: SizedBox(
        height: AppSize.s74,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
              text: RegisterConst.password,
            ),
            const SizedBox(
              height: AppSize.s8,
            ),
            Container(
              height: AppSize.s48,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
              child: TextField(
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: ColorManager.white, fontSize: AppSize.s14),
                  controller: textController,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: AppPadding.p16,
                      top: AppPadding.p12,
                      right: AppSize.s12,
                    ),
                    hintText: RegisterConst.enterPassword,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: AppSize.s12),
                      child: IconButton(
                        onPressed: () {
                          ref.read(registerStateProvider.notifier).seeIcon();
                        },
                        icon: ref.watch(registerStateProvider).flipPassIcon
                            ? Icon(
                                Icons.visibility,
                                color: ColorManager.white.withOpacity(0.7),
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: ColorManager.white.withOpacity(0.7),
                              ),
                      ),
                    ),
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: AppSize.s14),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.primary2),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !ref.watch(registerStateProvider).flipPassIcon),
            ),
          ],
        ),
      ),
    );
  }
}

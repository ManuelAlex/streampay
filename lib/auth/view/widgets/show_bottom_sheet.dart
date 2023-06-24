import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/auth/controller/providers/register_state_provider.dart';
import 'package:stream_pay/auth/view/constants/register_const.dart';
import 'package:stream_pay/componets/background.dart';
import 'package:stream_pay/componets/custom_container.dart';
import 'package:stream_pay/componets/lighter_container.dart';
import 'package:stream_pay/componets/text_widget.dart';
import 'package:stream_pay/resources/assets_manager.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class CustomShowBottomSheetWidget extends ConsumerWidget {
  const CustomShowBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(
              shouldClip: true,
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
              )),
          CustomContainer(
            child: Padding(
              padding: const EdgeInsets.all(AppSize.s20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildTop(context, ref),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    BottomSheetChildren(
                      textToDisplay: RegisterConst.metaMask,
                      imageIconPath: AssetsManager.metaMask,
                      onTap: () {},
                    ),
                    const SizedBox(height: AppSize.s16),
                    BottomSheetChildren(
                      textToDisplay: RegisterConst.trustWallet,
                      imageIconPath: AssetsManager.trustWallet,
                      onTap: () {},
                    ),
                    const SizedBox(height: AppSize.s16),
                    BottomSheetChildren(
                      textToDisplay: RegisterConst.mathWallet,
                      imageIconPath: AssetsManager.mathWallet,
                      onTap: () {},
                    ),
                    const SizedBox(height: AppSize.s16),
                    BottomSheetChildren(
                      textToDisplay: RegisterConst.walletConnect,
                      imageIconPath: AssetsManager.walletConnect,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildTop(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Row(
      children: [
        Text(
          RegisterConst.connetWithWallet,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return IconButton(
                onPressed: () {
                  // ref.read(registerStateProvider.notifier).setConnetWallet();
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close,
                  color: ColorManager.white.withOpacity(0.7),
                ));
          },
        )
      ],
    );
  }
}

class BottomSheetChildren extends StatelessWidget {
  final String textToDisplay;
  final String imageIconPath;
  final VoidCallback onTap;
  const BottomSheetChildren({
    required this.imageIconPath,
    required this.textToDisplay,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomLighterContainer(
          child: Padding(
        padding: const EdgeInsets.only(
          left: AppSize.s20,
          right: AppSize.s20,
        ),
        child: Row(
          children: [
            TextWidget(text: textToDisplay),
            const Spacer(),
            Image.asset(imageIconPath),
          ],
        ),
      )),
    );
  }
}

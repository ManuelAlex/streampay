import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/auth/controller/providers/register_state_provider.dart';
import 'package:stream_pay/auth/view/constants/register_const.dart';
import 'package:stream_pay/auth/view/extenstions/show_bottomshet.dart';
import 'package:stream_pay/auth/view/widgets/connect_wallet.dart';
import 'package:stream_pay/auth/view/widgets/divider_with_or.dart';
import 'package:stream_pay/auth/view/widgets/show_bottom_sheet.dart';
import 'package:stream_pay/auth/view/widgets/text_field_widget.dart';
import 'package:stream_pay/componets/background.dart';
import 'package:stream_pay/componets/custom_container.dart';
import 'package:stream_pay/componets/login_row.dart';
import 'package:stream_pay/resources/value_manager.dart';

class RegisterView extends HookConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final setWalletState =
        ref.watch(registerStateProvider).isPressedConnetWallet;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackGround(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(AppSize.s16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Text(
                    RegisterConst.createAccount,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: AppSize.s30,
                          fontWeight: setWalletState
                              ? FontWeight.normal
                              : FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                  Text(
                    RegisterConst.createAccountNote,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: AppSize.s14),
                  ),
                  const SizedBox(
                    height: AppSize.s16,
                  ),
                  SizedBox(
                    height: size.height * 0.62,
                    child: CustomContainer(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(left: AppSize.s20),
                          child: Column(
                            children: [
                              CustomTextFeild(
                                text: RegisterConst.email,
                                hintText: RegisterConst.enterEmail,
                                textEditingController:
                                    useTextEditingController(),
                                textInputType: TextInputType.emailAddress,
                                index: 0,
                              ),
                              CustomTextFeild(
                                text: RegisterConst.firstName,
                                hintText: RegisterConst.enterFirstName,
                                textEditingController:
                                    useTextEditingController(),
                                textInputType: TextInputType.name,
                                index: 1,
                              ),
                              CustomTextFeild(
                                text: RegisterConst.lastName,
                                hintText: RegisterConst.enterLastname,
                                textEditingController:
                                    useTextEditingController(),
                                textInputType: TextInputType.name,
                                index: 2,
                              ),
                              CustomPasswordTextFeild(
                                textEditingController:
                                    useTextEditingController(),
                              ),
                              const DividerWithOR(),
                              InkWell(
                                  onTap: () {
                                    showBottomSheetWidget(
                                      context,
                                      const CustomShowBottomSheetWidget(),
                                      ref,
                                    );
                                    ref
                                        .read(registerStateProvider.notifier)
                                        .setConnetWallet();
                                  },
                                  child: const ConnetWallet()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s16,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: const Text(RegisterConst.signUp),
                  ),
                  const SizedBox(),
                  const LoginRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

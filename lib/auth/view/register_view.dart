import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_pay/auth/view/constants/register_const.dart';
import 'package:stream_pay/auth/view/widgets/divider_with_or.dart';
import 'package:stream_pay/auth/view/widgets/text_field_widget.dart';
import 'package:stream_pay/componets/background.dart';
import 'package:stream_pay/componets/custom_container.dart';
import 'package:stream_pay/componets/login_row.dart';
import 'package:stream_pay/componets/text_widget.dart';
import 'package:stream_pay/resources/assets_manager.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

class RegisterView extends HookWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackGround(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              Text(
                RegisterConst.createAccount,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: AppSize.s30),
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              const TextWidget(
                text: RegisterConst.createAccountNote,
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
                            textEditingController: useTextEditingController(),
                            textInputType: TextInputType.emailAddress,
                          ),
                          CustomTextFeild(
                            text: RegisterConst.firstName,
                            hintText: RegisterConst.enterFirstName,
                            textEditingController: useTextEditingController(),
                            textInputType: TextInputType.name,
                          ),
                          CustomTextFeild(
                            text: RegisterConst.lastName,
                            hintText: RegisterConst.enterLastname,
                            textEditingController: useTextEditingController(),
                            textInputType: TextInputType.name,
                          ),
                          CustomPasswordTextFeild(
                            textEditingController: useTextEditingController(),
                          ),
                          const DividerWithOR(),
                          const ConnetWallet(),
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
    );
  }
}

class ConnetWallet extends StatelessWidget {
  const ConnetWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.s20),
      child: CustomLighterContainer(
          isWallet: true,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: AppSize.s60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppSize.s10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s14),
                    child: Image.asset(
                      AssetsManager.connetWalletVector,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    RegisterConst.connetWithWallet,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorManager.white.withOpacity(0.7),
              ),
              const SizedBox(
                width: AppSize.s22,
              )
            ],
          )),
    );
  }
}

class CustomLighterContainer extends StatelessWidget {
  final Widget child;
  final bool isWallet;
  const CustomLighterContainer({
    Key? key,
    required this.child,
    this.isWallet = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppSize.s10),
        border: isWallet ? Border.all(color: ColorManager.primary2) : null,
      ),
      child: child,
    );
  }
}

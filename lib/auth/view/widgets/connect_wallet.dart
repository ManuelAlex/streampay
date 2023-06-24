import 'package:flutter/material.dart';
import 'package:stream_pay/auth/view/constants/register_const.dart';
import 'package:stream_pay/componets/lighter_container.dart';
import 'package:stream_pay/resources/assets_manager.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

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

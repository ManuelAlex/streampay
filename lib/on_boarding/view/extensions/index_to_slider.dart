import 'package:stream_pay/on_boarding/models/slider_model.dart';
import 'package:stream_pay/on_boarding/view/const/onboarding_string.dart';
import 'package:stream_pay/resources/assets_manager.dart';

extension IndexToSlides on int {
  SliderModel indexToSliderModel() {
    switch (this) {
      case 0:
        return const SliderModel(
            imgUrl: AssetsManager.slider1ImageUrl,
            title: OnBoardingStringConst.tittle1,
            subtitle: OnBoardingStringConst.subtittle1);
      case 1:
        return const SliderModel(
            imgUrl: AssetsManager.slider1ImageUr2,
            title: OnBoardingStringConst.tittle2,
            subtitle: OnBoardingStringConst.subtittle2);
      case 2:
        return const SliderModel(
            imgUrl: AssetsManager.slider1ImageUr3,
            title: OnBoardingStringConst.tittle3,
            subtitle: OnBoardingStringConst.subtittle3);
      default:
        return const SliderModel(
            imgUrl: AssetsManager.slider1ImageUrl,
            title: OnBoardingStringConst.tittle1,
            subtitle: OnBoardingStringConst.subtittle1);
    }
  }
}

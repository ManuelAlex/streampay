import 'package:flutter/foundation.dart' show immutable;

@immutable
class SliderModel {
  final String title;
  final String subtitle;
  final String imgUrl;
  const SliderModel({
    required this.imgUrl,
    required this.title,
    required this.subtitle,
  });
}

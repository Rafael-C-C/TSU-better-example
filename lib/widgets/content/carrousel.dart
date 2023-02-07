import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

import '../images_list.dart';

class BannerIMG extends StatelessWidget {
  const BannerIMG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
      banners: listBanners,
      customizedIndicators: const IndicatorModel.animation(
          width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
      height: 120,
      activeColor: Colors.amberAccent,
      disableColor: Colors.white,
      animation: true,
      borderRadius: 10,
      width: 400,
      indicatorBottom: false,
    );
  }
}

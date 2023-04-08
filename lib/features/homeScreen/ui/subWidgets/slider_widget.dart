import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supercharged/supercharged.dart';
import 'package:resto/generated/colors.dart';
import 'package:resto/helpers/spacers.dart';

class BuildCarousel extends StatelessWidget {
  final List<String> carouselCards;
  BuildCarousel({
    Key? key,
    required this.carouselCards,
  }) : super(key: key);
  final indicator = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: carouselCards
              .map(
                (img) => Image.asset(
                  img,
                  fit: BoxFit.fitWidth,
                ),
              )
              .toList(),
          options: CarouselOptions(
            aspectRatio: 3,
            autoPlay: true,
            onPageChanged: (index, reason) => indicator.value = index,
          ),
        ),
        4.vPad,
        ValueListenableBuilder(
          valueListenable: indicator,
          builder: (context, value, child) => Container(
            width: carouselCards.length * 20.w,
            height: 10.h,
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Stack(
              children: [
                AnimatedPositionedDirectional(
                  start: value * 20,
                  duration: 200.milliseconds,
                  child: Container(
                    height: 10.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

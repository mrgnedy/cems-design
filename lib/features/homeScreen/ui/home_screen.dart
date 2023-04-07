import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resto/features/homeScreen/data/models/categories.dart';
import 'package:resto/features/homeScreen/data/models/meal.dart';
import 'package:resto/features/homeScreen/data/models/restaurant.dart';
import 'package:resto/generated/dummy_data.dart';
import 'package:resto/generated/locale_keys.dart';
import 'package:resto/generated/resources.dart';
import 'package:resto/helpers/spacers.dart';
import 'subWidgets/categories_widget.dart';
import 'subWidgets/favourites_widget.dart';
import 'subWidgets/location_widget.dart';
import 'subWidgets/most_ordered.dart';
import 'subWidgets/reorder_widget.dart';
import 'subWidgets/search_widget.dart';
import 'subWidgets/slider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
          child: Column(
            children: [
              const BuildLocation(),
              10.vPad,
              const BuildSearchAndCart(),
              8.vPad,
              BuildCarousel(carouselCards: DummyData.carouselCards),
              16.vPad,
              const BuildCategories(categories: DummyData.categories),
              26.vPad,
              const BuildReorder(lastOrders: DummyData.lastOrders),
              26.vPad,
              const BuildMostOrdered(meals: DummyData.meals),
              26.vPad,
              const BuildFavourite(meals: DummyData.meals),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildTitledSection extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget trailing;
  const BuildTitledSection({
    super.key,
    required this.child,
    required this.title,
    this.trailing = const SizedBox.shrink(),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title.tr(),
              style: TextStyle(fontSize: 21.sp),
            ),
            trailing,
          ],
        ),
        16.vPad,
        child,
      ],
    );
  }
}

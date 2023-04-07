
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart'; 
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resto/features/homeScreen/ui/home_screen.dart';
import 'package:resto/features/homeScreen/data/models/categories.dart';
import 'package:resto/features/homeScreen/data/models/meal.dart';
import 'package:resto/generated/colors.dart';
import 'package:resto/generated/locale_keys.dart';
import 'package:resto/generated/resources.dart';
import 'package:resto/helpers/spacers.dart'; 

class BuildMostOrdered extends StatelessWidget {
  final List<MealModel> meals;
  const BuildMostOrdered({
    super.key,
    required this.meals,
  });

  @override
  Widget build(BuildContext context) {
    return BuildTitledSection(
      trailing: Row(),
      title: LocaleKeys.mostOrdered,
      child: SizedBox(
        height: 250.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: meals.length,
          itemExtent: 266.w,
          itemBuilder: (context, index) {
            return Align(
              child: Container(
                width: 250.w,
                height: 250.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          meals[index].resturant.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(start: 8.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              16.vPad,
                              Text(meals[index].resturant.name),
                              8.vPad,
                              Text(meals[index].name),
                              8.vPad,
                              BuildBallPointSeparatedDetails(
                                details: [
                                  CategoryModel(
                                      image: R.ASSETS_IMAGES_DELIVERY_TIME_PNG,
                                      name:
                                          "${meals[index].resturant.deliveryTime} ${LocaleKeys.minute.tr()}"),
                                  CategoryModel(
                                      image: R.ASSETS_IMAGES_DELIVERY_PNG,
                                      name:
                                          "${meals[index].resturant.deliveryFees} ${LocaleKeys.currency.tr()}"),
                                  CategoryModel(
                                    image: R.ASSETS_IMAGES_STAR_PNG,
                                    name: "${meals[index].resturant.rate}",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BuildBallPointSeparatedDetails extends StatelessWidget {
  final List<CategoryModel> details;
  const BuildBallPointSeparatedDetails({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: (details
              .map((d) => <Widget>[
                    Row(
                      children: [
                        Image.asset(d.image),
                        4.hPad,
                        Text(d.name),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: const Text('●'),
                    ),
                  ])
              .expand((element) => element)
              .toList()
            ..removeLast())
          .toList(),
    );
  }
}

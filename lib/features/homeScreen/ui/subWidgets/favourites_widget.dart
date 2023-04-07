import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resto/features/homeScreen/ui/home_screen.dart';
import 'package:resto/features/homeScreen/data/models/meal.dart';
import 'package:resto/generated/colors.dart';
import 'package:resto/generated/locale_keys.dart';
import 'package:resto/generated/resources.dart';
import 'package:resto/helpers/spacers.dart';

class BuildFavourite extends StatelessWidget {
  final List<MealModel> meals;
  const BuildFavourite({
    Key? key,
    required this.meals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildTitledSection(
      title: LocaleKeys.youMayLike,
      child: SizedBox(
        height: 300.r,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemExtent: 212.r,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Align(
              child: SizedBox(
                height: 300.r,
                width: 200.r,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.lightGrey)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage(R.ASSETS_IMAGES_COOK_DOOR_PNG),
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional.lerp(
                                  AlignmentDirectional.bottomEnd,
                                  AlignmentDirectional.center,
                                  0.1)!,
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage(R.ASSETS_IMAGES_CART_PNG),
                              ),
                            ),
                          ),
                        ),
                      ),
                      16.vPad,
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(start: 8.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(meals[index].name),
                                  12.vPad,
                              Row(
                                children: [
                                  Text(
                                    "${meals[index].priceAfterDiscount} ${LocaleKeys.currency.tr()}",
                                    style:
                                        const TextStyle(color: AppColors.amber),
                                  ),
                                  16.hPad,
                                  Text(
                                    "${meals[index].price} ${LocaleKeys.currency.tr()}",
                                    style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              16.vPad,
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        meals[index].resturant.image),
                                  ),
                                  12.hPad,
                                  Text(meals[index].resturant.name)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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

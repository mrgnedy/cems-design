import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart'; 
import 'package:flutter_screenutil/flutter_screenutil.dart'; 
import 'package:resto/features/homeScreen/ui/home_screen.dart'; 
import 'package:resto/features/homeScreen/data/models/categories.dart'; 
import 'package:resto/generated/colors.dart';
import 'package:resto/generated/locale_keys.dart';
import 'package:resto/generated/resources.dart';
import 'package:resto/helpers/spacers.dart'; 

class BuildReorder extends StatelessWidget {
  final List<CategoryModel> lastOrders;
  const BuildReorder({
    super.key,
    required this.lastOrders,
  });

  @override
  Widget build(BuildContext context) {
    return BuildTitledSection(
      title: LocaleKeys.reorder,
      child: SizedBox(
        height: 100.h,
        child: ListView.builder(
          itemCount: lastOrders.length,
          itemExtent: 208.w,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                height: 100.h,
                width: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.lightGrey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Image.asset(lastOrders[index].image)),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(lastOrders[index].name),
                              Text(lastOrders[index].subtitle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(R.ASSETS_IMAGES_REFRESH_PNG),
                        4.hPad,
                        Text(
                          LocaleKeys.reorder.tr(),
                          style: TextStyle(color: AppColors.green),
                        ),
                        10.hPad
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

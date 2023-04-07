
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart'; 
import 'package:flutter_screenutil/flutter_screenutil.dart'; 
import 'package:resto/generated/colors.dart';
import 'package:resto/generated/locale_keys.dart';
import 'package:resto/generated/resources.dart';
import 'package:resto/helpers/spacers.dart'; 

class BuildSearchAndCart extends StatelessWidget {
  const BuildSearchAndCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: LocaleKeys.searchForMealOrResto.tr(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
            ),
          ),
          12.hPad,
          DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Row(
                children: [
                  // 8.hPad,
                  SizedBox(
                    width: 50.r,
                    height: 50.r,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(R.ASSETS_IMAGES_CART_PNG),
                        Positioned.directional(
                            top: 0,
                            start: 0,
                            textDirection: Directionality.of(context),
                            child: Container(
                              height: 20.r,
                              width: 20.r,
                              child: Center(
                                  child: Text(
                                '50',
                                style: TextStyle(fontSize: 10.sp),
                              )),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.amber,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: double.infinity,
                    child: VerticalDivider(
                      color: Colors.grey,
                      endIndent: 10,
                      indent: 10,
                    ),
                  ),
                  Text("300 ${LocaleKeys.currency.tr()}")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resto/features/homeScreen/ui/home_screen.dart';
import 'package:resto/features/homeScreen/data/models/categories.dart';
import 'package:resto/generated/locale_keys.dart';

class BuildCategories extends StatelessWidget {
  final List<CategoryModel> categories;
  const BuildCategories({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return BuildTitledSection(
      title: LocaleKeys.categories,
      child: SizedBox(
        height: 130.r,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemExtent: 142.r,
          itemBuilder: (context, index) {
            return Container(
              height: 130.r,
              width: 130.r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage(categories[index].image))),
              child: Align(
                alignment: Alignment.lerp(
                    Alignment.center, Alignment.bottomCenter, 0.8)!,
                child: Text(
                  categories[index].name.tr(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

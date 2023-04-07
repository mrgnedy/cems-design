import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resto/generated/locale_keys.dart';

class BuildLocation extends StatelessWidget {
  const BuildLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(FontAwesomeIcons.locationPin),
            Text("طنطا، منطقة الاستاد")
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            LocaleKeys.change.tr(),
          ),
        )
      ],
    );
  }
}

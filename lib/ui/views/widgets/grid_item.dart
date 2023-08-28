import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String description;
  final String less;

  const GridItem({Key? key, required this.title, required this.description, required this.less}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 312.998,
          child: Stack(children: [
            Image.asset(
              PngImages.shirtD,
              width: 272.948,
              height: 400.0,
            ),
            Positioned(
              top: 17.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 11.0),
                color: ColorRes.lessColor,
                child: AppText(
                  label: "$less ${LocaleKeys.label_off.tr()}",
                  color: ColorRes.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 19.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: AppText(
            label: title.toUpperCase(),
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: AppText(
            label: description,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

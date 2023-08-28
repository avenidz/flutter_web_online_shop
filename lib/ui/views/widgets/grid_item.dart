import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String description;
  final String less;

  const GridItem({Key? key, required this.title, required this.description, required this.less}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (ViewIdentifier.isMobileView(constraints.maxWidth)) {
        return gridItem(141.0, 200.0, 10.0, 15.0, 13.0, 162.0);
      } else {
        return gridItem(272.948, 400.0, 18.0, 18.0, 18.0, 312.998);
      }
    });
  }

  Widget gridItem(
    double width,
    double height,
    double fontSize,
    double titleSize,
    double descriptionSize,
    double containerSize,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: containerSize,
          child: Stack(children: [
            Image.asset(
              PngImages.shirtD,
              width: width,
              height: height,
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
                  fontSize: fontSize,
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
            fontSize: titleSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: AppText(
            label: description,
            fontSize: descriptionSize,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

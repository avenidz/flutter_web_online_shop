import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_text.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';
import 'package:easy_localization/easy_localization.dart';

class ShopDescription extends StatelessWidget {
  const ShopDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (ViewIdentifier.isMobileView(constraints.maxWidth)) {
        return const SizedBox(
          height: 79.0,
        );
      } else {
        return _showDescription();
      }
    });
  }

  Widget _showDescription() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 61.0, bottom: 68.0),
        color: ColorRes.dirtyWhite,
        width: double.infinity,
        child: AppText(
          label: LocaleKeys.shop_description.tr(),
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

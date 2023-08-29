import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';

class BannerSale extends StatelessWidget {
  const BannerSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (ViewIdentifier.isMobileView(constraints.maxWidth)) {
        return _mobileView();
      } else if (ViewIdentifier.isTabletView(constraints.maxWidth)) {
        return _tabletView();
      } else {
        return _desktopView();
      }
    });
  }

  Widget _mobileView() {
    return Container(
      width: double.infinity,
      height: 66.0,
      decoration: BoxDecoration(color: ColorRes.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.5),
          offset: const Offset(0, 5),
          blurRadius: 5.0,
          spreadRadius: 0.8,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
            child: AppText(
              label: LocaleKeys.label_sale.tr().toUpperCase(),
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
              color: ColorRes.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabletView() {
    return Container(
      width: double.infinity,
      height: 66.0,
      decoration: BoxDecoration(color: ColorRes.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.5),
          offset: const Offset(0, 5),
          blurRadius: 5.0,
          spreadRadius: 0.8,
        )
      ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
              child: AppText(
                label: LocaleKeys.label_sale.tr().toUpperCase(),
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: ColorRes.red,
              ),
            ),
            const SizedBox(
              width: 93.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
              child: AppText(
                label: LocaleKeys.label_sale.tr().toUpperCase(),
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: ColorRes.red,
              ),
            ),
            const SizedBox(
              width: 93.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
              child: AppText(
                label: LocaleKeys.label_sale.tr().toUpperCase(),
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: ColorRes.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _desktopView() {
    return Container(
      width: double.infinity,
      height: 66.0,
      decoration: BoxDecoration(color: ColorRes.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.5),
          offset: const Offset(0, 5),
          blurRadius: 5.0,
          spreadRadius: 0.8,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
            child: AppText(
              label: LocaleKeys.label_sale.tr().toUpperCase(),
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
              color: ColorRes.red,
            ),
          ),
          const SizedBox(
            width: 93.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
            child: AppText(
              label: LocaleKeys.label_sale.tr().toUpperCase(),
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
              color: ColorRes.red,
            ),
          ),
          const SizedBox(
            width: 93.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
            child: AppText(
              label: LocaleKeys.label_sale.tr().toUpperCase(),
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
              color: ColorRes.red,
            ),
          ),
          const SizedBox(
            width: 93.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
            child: AppText(
              label: LocaleKeys.label_sale.tr().toUpperCase(),
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
              color: ColorRes.red,
            ),
          ),
          const SizedBox(
            width: 93.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
            child: AppText(
              label: LocaleKeys.label_sale.tr().toUpperCase(),
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
              color: ColorRes.red,
            ),
          ),
        ],
      ),
    );
  }
}

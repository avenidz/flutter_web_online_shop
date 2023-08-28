import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';

class NavBarItems extends StatelessWidget {
  const NavBarItems({Key? key}) : super(key: key);

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
      margin: const EdgeInsets.only(top: 15.0),
      width: double.infinity,
      height: 66.0,
      decoration: const BoxDecoration(color: ColorRes.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 5),
          blurRadius: 5.0,
          spreadRadius: 0.8,
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 39.0),
        child: Row(
          children: [
            Image.asset(
              PngImages.drawer,
              width: 36.0,
              height: 28.0,
            ),
            const Spacer(),
            Image.asset(
              PngImages.logo,
              width: 50.0,
              height: 50.0,
            ),
            const Spacer(),
            Image.asset(
              PngImages.jar,
              width: 21.0,
              height: 25.0,
            ),
            const SizedBox(
              width: 17.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 58.0),
              child: Image.asset(
                PngImages.star,
                width: 28.0,
                height: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabletView() {
    return Column(
      children: [
        _topNavigation(),
        Container(
          width: double.infinity,
          height: 66.0,
          decoration: const BoxDecoration(color: ColorRes.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5),
              blurRadius: 5.0,
              spreadRadius: 0.8,
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 39.0),
            child: Row(
              children: [
                Image.asset(
                  PngImages.drawer,
                  width: 36.0,
                  height: 28.0,
                ),
                const SizedBox(
                  width: 110.0,
                ),
                Image.asset(
                  PngImages.logo,
                  width: 50.0,
                  height: 50.0,
                ),
                const Spacer(),
                Container(
                  width: 194.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                    color: ColorRes.grey,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        hintText: LocaleKeys.search.tr(),
                        hintStyle: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 19.5,
                          color: ColorRes.black,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 23.0,
                ),
                Image.asset(
                  PngImages.jar,
                  width: 21.0,
                  height: 25.0,
                ),
                const SizedBox(
                  width: 17.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 58.0),
                  child: Image.asset(
                    PngImages.star,
                    width: 28.0,
                    height: 28.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _desktopView() {
    return Column(
      children: [
        _topNavigation(),
        Container(
          width: double.infinity,
          height: 66.0,
          decoration: const BoxDecoration(color: ColorRes.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5),
              blurRadius: 5.0,
              spreadRadius: 0.8,
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 39.0),
            child: Row(
              children: [
                Image.asset(
                  PngImages.logo,
                  width: 50.0,
                  height: 50.0,
                ),
                const Spacer(),
                AppText(
                  label: LocaleKeys.nav_home.tr().toUpperCase(),
                  fontSize: 16.0,
                ),
                const SizedBox(
                  width: 38.0,
                ),
                AppText(
                  label: LocaleKeys.nav_new_arrival.tr().toUpperCase(),
                  fontSize: 16.0,
                ),
                const SizedBox(
                  width: 34.0,
                ),
                AppText(
                  label: LocaleKeys.nav_shop.tr().toUpperCase(),
                  fontSize: 16.0,
                ),
                const SizedBox(
                  width: 34.0,
                ),
                AppText(
                  label: LocaleKeys.nav_last_collection.tr().toUpperCase(),
                  fontSize: 16.0,
                ),
                const SizedBox(
                  width: 34.0,
                ),
                AppText(
                  label: LocaleKeys.nav_men.tr().toUpperCase(),
                  fontSize: 16.0,
                ),
                const SizedBox(
                  width: 34.0,
                ),
                AppText(
                  label: LocaleKeys.nav_women.tr().toUpperCase(),
                  fontSize: 16.0,
                ),
                const SizedBox(
                  width: 66.0,
                ),
                Container(
                  width: 194.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                    color: ColorRes.grey,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        hintText: LocaleKeys.search.tr(),
                        hintStyle: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 19.5,
                          color: ColorRes.black,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 23.0,
                ),
                Image.asset(
                  PngImages.jar,
                  width: 21.0,
                  height: 25.0,
                ),
                const SizedBox(
                  width: 17.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 58.0),
                  child: Image.asset(
                    PngImages.star,
                    width: 28.0,
                    height: 28.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _topNavigation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 9.0, 30.0, 5.0),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppText(
              label: LocaleKeys.label_help.tr(),
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
            ),
            const VerticalDivider(
              color: ColorRes.black,
              thickness: 2.0,
            ),
            AppText(
              label: LocaleKeys.label_join_us.tr(),
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
            ),
            const VerticalDivider(
              color: ColorRes.black,
              thickness: 2.0,
            ),
            AppText(
              label: LocaleKeys.label_sign_in.tr(),
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}

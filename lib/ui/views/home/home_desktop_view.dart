import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_viewmodel.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_button.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/nav_bar_items.dart';
import 'package:flutter_web_online_shop/ui/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeDesktopView extends StackedView<HomeViewModel> {
  const HomeDesktopView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  PngImages.backgroundFirst,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
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
                    ),
                    const NavBarItems(),
                    _homeShowNowView(),
                  ],
                ),
              ],
            ),
            _shopContents(),
          ],
        ),
      ),
    );
  }

  Widget _shopContents() {
    return Container(
      width: 1440.0,
      margin: const EdgeInsets.only(top: 116.0, bottom: 61.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                PngImages.shirtD,
                width: 409.422,
                height: 600.0,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 39.02,
                child: buttonShop(LocaleKeys.button_sweat_shirts.tr()),
              )
            ],
          ),
          const SizedBox(
            width: 39.59,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                PngImages.shirtE,
                width: 409.422,
                height: 600.0,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 39.02,
                child: buttonShop(LocaleKeys.button_hoodies.tr()),
              )
            ],
          ),
          const SizedBox(
            width: 39.59,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                PngImages.shirtD,
                width: 409.422,
                height: 600.0,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 39.02,
                child: buttonShop(LocaleKeys.button_pair.tr()),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _homeShowNowView() {
    return Padding(
      padding: const EdgeInsets.only(top: 123.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              PngImages.shirtC,
              width: 724.0,
              height: 532.0,
            ),
          ),
          Image.asset(
            PngImages.shirtA,
            width: 381.0,
            height: 514.0,
          ),
          Image.asset(
            PngImages.shirtB,
            width: 387.0,
            height: 564.0,
          ),
          Align(alignment: Alignment.bottomCenter, child: buttonShop(LocaleKeys.button_shop_now.tr())),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

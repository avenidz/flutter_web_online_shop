import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_viewmodel.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_button.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/grid_item.dart';
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
                    _homeShopNowView(),
                  ],
                ),
              ],
            ),
            _shopContents(),
            _shopDescription(),
            _bannerSale(),
            const SizedBox(
              height: 79.0,
            ),
            _gridViewContents(),
            _footer(),
          ],
        ),
      ),
    );
  }

  Widget _bannerSale() {
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

  Widget _shopDescription() {
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

  Widget _gridViewContents() {
    return SizedBox(
      width: 1440.0,
      child: Center(
        child: Column(
          children: [
            Wrap(
              spacing: 27.0,
              runSpacing: 42.0,
              children: [
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
                GridItem(
                    title: LocaleKeys.label_lorem_ipsum.tr(),
                    description: LocaleKeys.label_lorem_ipsum.tr(),
                    less: "15%"),
              ],
            ),
            const SizedBox(
              height: 42.0,
            ),
            buttonShop(LocaleKeys.button_more.tr()),
            const SizedBox(
              height: 65.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _shopContents() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 116.0),
        color: ColorRes.dirtyWhite,
        width: double.infinity,
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
      ),
    );
  }

  Widget _homeShopNowView() {
    return Padding(
      padding: const EdgeInsets.only(top: 123.0),
      child: Center(
        child: Expanded(
          child: SizedBox(
            width: 1440.0,
            height: 680.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      PngImages.shirtA,
                      width: 381.0,
                      height: 514.0,
                    ),
                  ),
                ),
                Positioned(
                  left: 716.0,
                  child: Image.asset(
                    PngImages.shirtC,
                    width: 724.0,
                    height: 532.0,
                  ),
                ),
                Positioned(
                  top: 100.0,
                  left: 355.0,
                  child: Image.asset(
                    PngImages.shirtB,
                    width: 387.0,
                    height: 564.0,
                  ),
                ),
                Positioned(bottom: 0.0, child: buttonShop(LocaleKeys.button_shop_now.tr())),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _footer() {
    return Container(
      padding: const EdgeInsets.only(top: 37.0),
      width: double.infinity,
      color: ColorRes.dirtyWhite,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1440.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(PngImages.footerLogo),
                const SizedBox(
                  height: 43.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.send,
                        color: ColorRes.labelColorDirtyWhite,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      AppText(
                        label: LocaleKeys.footer_message.tr(),
                        textAlign: TextAlign.left,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.labelColorDirtyWhite,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone_android,
                        color: ColorRes.labelColorDirtyWhite,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      AppText(
                        label: LocaleKeys.footer_phone.tr(),
                        textAlign: TextAlign.left,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.labelColorDirtyWhite,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        color: ColorRes.labelColorDirtyWhite,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      AppText(
                        label: LocaleKeys.footer_email.tr(),
                        textAlign: TextAlign.left,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.labelColorDirtyWhite,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Image.asset(
                  PngImages.mediaPlatform,
                  width: 214.0,
                  height: 64.0,
                ),
                const SizedBox(
                  height: 47.0,
                ),
              ],
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              label: LocaleKeys.footer_collection.tr().toUpperCase(),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              label: LocaleKeys.footer_information.tr().toUpperCase(),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              label: LocaleKeys.footer_more.tr().toUpperCase(),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

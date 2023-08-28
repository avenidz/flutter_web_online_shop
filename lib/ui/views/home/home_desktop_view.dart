import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_viewmodel.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_button.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/banner_sale.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/footer.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/grid_item.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/header_content.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/nav_bar_items.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/shop_description.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

class MainView extends StackedView<HomeViewModel> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeaderContent(),
                _shopContents(),
                const ShopDescription(),
                const BannerSale(),
                const SizedBox(
                  height: 79.0,
                ),
                _gridViewContents(),
                const Footer(),
              ],
            ),
          ),
          NavBarItems(
              voidCallback: () => viewModel.openDrawer(
                    context,
                  )),
        ],
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
        padding: const EdgeInsets.only(top: 116.0, bottom: 79.0),
        color: ColorRes.dirtyWhite,
        width: double.infinity,
        child: Wrap(
          runSpacing: 39.0,
          spacing: 39.0,
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

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

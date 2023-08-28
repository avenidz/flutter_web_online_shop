import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';

import 'app_button.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (ViewIdentifier.isMobileView(constraints.maxWidth)) {
        return _mobileView();
        // } else if (ViewIdentifier.isTabletView(constraints.maxWidth)) {
        //   return _tabletView();
      } else {
        return _desktopView();
      }
    });
  }

  Widget _mobileView() {
    return Center(
      child: Expanded(
        child: SizedBox(
          width: double.infinity,
          height: 1000.0,
          child: Stack(
            children: [
              Image.asset(
                PngImages.backgroundFirst,
                fit: BoxFit.fitHeight,
                width: double.infinity,height: double.infinity,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [

                  Positioned(top: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 112.0),
                      child: Image.asset(
                        PngImages.shirtC,
                        width: 424.0,
                        height: 332.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250.0,
                    left: 10.0,
                    child: Image.asset(
                      PngImages.shirtB,
                      width: 287.0,
                      // height: 464.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Image.asset(
                        PngImages.shirtA,
                        width: 381.0,
                        height: 414.0,
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.center, child: buttonShop(LocaleKeys.button_shop_now.tr())),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _desktopView() {
    return Stack(
      children: [
        Image.asset(
          PngImages.backgroundFirst,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 215.0),
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
        ),
      ],
    );
  }
}

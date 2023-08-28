import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_desktop_view.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Container(
                color: ColorRes.dirtyWhite,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: AppText(
                    label: LocaleKeys.nav_home.tr().toUpperCase(),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                color: ColorRes.dirtyWhite,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: AppText(
                    label: LocaleKeys.nav_new_arrival.tr().toUpperCase(),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                color: ColorRes.dirtyWhite,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: AppText(
                    label: LocaleKeys.nav_shop.tr().toUpperCase(),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                color: ColorRes.dirtyWhite,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: AppText(
                    label: LocaleKeys.nav_last_collection.tr().toUpperCase(),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                color: ColorRes.dirtyWhite,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: AppText(
                    label: LocaleKeys.nav_men.tr().toUpperCase(),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                color: ColorRes.dirtyWhite,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: AppText(
                    label: LocaleKeys.nav_women.tr().toUpperCase(),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const MainView(),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_desktop_view.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_mobile_view.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (ViewIdentifier.isMobileView(constraints.maxWidth)) {
            return const HomeMobileView();
          } else {
            return const HomeDesktopView();
          }
        },
      )
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

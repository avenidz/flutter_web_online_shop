import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_viewmodel.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/nav_bar_items.dart';
import 'package:stacked/stacked.dart';

class HomeMobileView extends StackedView<HomeViewModel> {
  const HomeMobileView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              PngImages.backgroundFirst,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavBarItems(),
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

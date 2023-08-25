import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeDesktopView extends StackedView<HomeViewModel> {
  const HomeDesktopView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return const SingleChildScrollView(
      child: Column(
        children: [Text('desktop')],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

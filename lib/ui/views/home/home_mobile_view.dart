import 'package:flutter/cupertino.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeMobileView extends StackedView<HomeViewModel> {
  const HomeMobileView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return const SingleChildScrollView(
      child: Column(
        children: [Text('mobile')],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

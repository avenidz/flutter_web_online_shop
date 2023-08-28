import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}

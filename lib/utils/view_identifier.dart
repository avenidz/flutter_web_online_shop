import 'package:flutter_web_online_shop/app/constants.dart';

class ViewIdentifier {
  ViewIdentifier._();

  static bool isMobileView(double size) {
    return size < Constants.mobileView ? true : false;
  }

  static bool isTabletView(double size) {
    return size > Constants.mobileView && size < Constants.desktopView ? true : false;
  }
}

import 'package:flutter_web_online_shop/services/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';

class AppBaseViewModel extends BaseViewModel {
  final apiServices = locator<ApiService>();
  final navigationService = locator<NavigationService>();

}
import 'package:flutter_web_online_shop/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:flutter_web_online_shop/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:flutter_web_online_shop/ui/views/home/home_view.dart';
import 'package:flutter_web_online_shop/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_web_online_shop/services/api_service.dart';
import 'package:flutter_web_online_shop/services/api_impl_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: ApiImplService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}

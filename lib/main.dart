import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/app/app.bottomsheets.dart';
import 'package:flutter_web_online_shop/app/app.dialogs.dart';
import 'package:flutter_web_online_shop/app/app.locator.dart';
import 'package:flutter_web_online_shop/app/app.router.dart';
import 'package:get/get.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(EasyLocalization(supportedLocales: const [
    Locale('en'),
  ], path: 'lib/ui/resources/translations', child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}

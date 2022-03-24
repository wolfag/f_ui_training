import 'package:f_ui/src/di/service_locator.dart';
import 'package:f_ui/src/mobile_ui/root/root.dart';
import 'package:f_ui/src/mobile_ui/routes/routes.dart';
import 'package:f_ui/src/navigation/navigation_service.dart';
import 'package:f_ui/src/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

void main() async {
  await ServiceLocator().setUp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UI Kit',
        themeMode: ThemeMode.light,
        navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
        initialRoute: MobileRoutes.root,
        onGenerateRoute: routes,
        home: RootWidget(),
      ),
    );
  }
}

import 'package:f_ui/src/mobile_ui/root/page_button_widget.dart';
import 'package:f_ui/src/mobile_ui/routes/routes.dart';
import 'package:f_ui/src/navigation/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ui Kit',
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, left: 8.w),
        child: Wrap(
          spacing: 18.w,
          runSpacing: 18.h,
          children: [
            PageButtonWidget(
              page: 1,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg1);
              },
            ),
            PageButtonWidget(
              page: 2,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg2);
              },
            ),
          ],
        ),
      ),
    );
  }
}

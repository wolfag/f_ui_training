// ignore_for_file: prefer_function_declarations_over_variables

import 'package:f_ui/src/mobile_ui/1/page1.dart';
import 'package:f_ui/src/mobile_ui/routes/routes.dart';
import 'package:f_ui/src/navigation/fade_route.dart';
import 'package:flutter/material.dart';

var routes = (RouteSettings setting) {
  switch (setting.name) {
    case MobileRoutes.pg1:
      return FadeRoute(page: const Page1());
  }
};

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/home_controller.dart';
import 'package:stock_trading_app/views/home_page.dart';

import 'controllers/filter_page_controller.dart';

void main() {
  FilterController fpController = Get.put(FilterController());
  HomeController homeController = Get.put(HomeController());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "myFont"),
    home: HomePage(),
  ));
}

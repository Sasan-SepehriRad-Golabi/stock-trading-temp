import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/views/filter_page_main.dart';
import 'package:stock_trading_app/views/home_page.dart';
import 'package:stock_trading_app/views/home_page_main.dart';
import 'package:stock_trading_app/views/social_page_main.dart';

import '../views/magazine_page_main.dart';
import '../views/market_page_main.dart';

class HomeController extends GetxController {
  List<Widget> screens = [
    const HomePageMain(),
    const MarketPageMain(),
    const MagazinePageMain(),
    FilterPageMain(),
    const SocialPageMain()
  ];
  int homeBodyCurrentIndex = 0;
  updateScreen(int? index) {
    index != null ? homeBodyCurrentIndex = index : 0;
    print(homeBodyCurrentIndex);
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:stock_trading_app/controllers/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  FilterController fController = Get.find();
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: controller.screens[controller.homeBodyCurrentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.deepPurple,
              unselectedItemColor: Colors.black,
              onTap: (index) {
                homeController.updateScreen(index);
              },
              currentIndex: controller.homeBodyCurrentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon/home.svg'),
                    label: "خانه"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon/activity.svg'),
                    label: "نبض بازار"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon/chart.svg'),
                    label: "ژورنال"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/icon/filter-out.svg',
                    ),
                    label: "فیلتر"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon/lamp-on.svg'),
                    label: "سوشال")
              ],
            )),
      );
    });
  }
}

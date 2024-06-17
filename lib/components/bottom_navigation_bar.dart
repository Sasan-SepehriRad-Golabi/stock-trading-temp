import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/bottom_menu_controller.dart';

// ignore: must_be_immutable
class BottomNavigationBarObject extends StatefulWidget {
  List<BottomNavigationBarItem>? bottomNavigationBaritems;
  bool isEnglishLang = false;
  BuildContext? _contex;
  BottomMenueController _controller = Get.find<BottomMenueController>();
  BottomNavigationBarObject(
      {Key? key,
      required List<Map<Widget, List<String>>> labels,
      String lang = "fa",
      required BuildContext context,
      Function(dynamic cont, dynamic controller)? homeFunction,
      Function(dynamic cont, dynamic controller)? marketFunction,
      Function(dynamic cont, dynamic controller)? magazineFunction,
      Function(dynamic cont, dynamic controller)? filterFunction,
      Function(dynamic cont, dynamic controller)? socialFunction,
      required BottomMenueController controller})
      : super(key: key) {
    _contex = context;
    _controller = controller;
    if (lang == "fa") {
      isEnglishLang = false;
      if (labels.isNotEmpty) {
        bottomNavigationBaritems ??= <BottomNavigationBarItem>[];
        for (var element in labels) {
          bottomNavigationBaritems!.add(BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    switch (element.values.first[1]) {
                      case "home":
                        homeFunction != null
                            ? homeFunction(_contex, _controller)
                            : null;
                        break;
                      case "market":
                        marketFunction != null
                            ? marketFunction(_contex, _controller)
                            : null;
                        break;
                      case "magazine":
                        magazineFunction != null
                            ? magazineFunction(_contex, _controller)
                            : null;
                        break;
                      case "filter":
                        filterFunction != null
                            ? filterFunction(_contex, _controller)
                            : null;
                        break;
                      case "social":
                        socialFunction != null
                            ? socialFunction(_contex, _controller)
                            : null;
                        break;
                    }
                  },
                  child: element.keys.first),
              label: element.values.first[0]));
        }
      }
    } else {
      isEnglishLang = true;
      if (labels.isNotEmpty) {
        bottomNavigationBaritems ??= <BottomNavigationBarItem>[];
        for (var element in labels) {
          bottomNavigationBaritems!.add(BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    switch (element.values.first[1]) {
                      case "home":
                        homeFunction != null
                            ? homeFunction(_contex, _controller)
                            : null;
                        break;
                      case "market":
                        marketFunction != null
                            ? marketFunction(_contex, _controller)
                            : null;
                        break;
                      case "magazine":
                        magazineFunction != null
                            ? magazineFunction(_contex, _controller)
                            : null;
                        break;
                      case "filter":
                        filterFunction != null
                            ? filterFunction(_contex, _controller)
                            : null;
                        break;
                      case "social":
                        socialFunction != null
                            ? socialFunction(_contex, _controller)
                            : null;
                        break;
                    }
                  },
                  child: element.keys.first),
              label: element.values.first[0]));
        }
      }
    }
  }

  @override
  State<BottomNavigationBarObject> createState() =>
      _BottomNavigationBarObjectState();
}

class _BottomNavigationBarObjectState extends State<BottomNavigationBarObject> {
  @override
  Widget build(BuildContext context) {
    return !widget.isEnglishLang
        ? Directionality(
            textDirection: TextDirection.rtl,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: widget.bottomNavigationBaritems!,
              selectedItemColor: Colors.deepPurple,
              unselectedItemColor: Colors.black,
            ),
          )
        : Directionality(
            textDirection: TextDirection.ltr,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: widget.bottomNavigationBaritems!),
          );
  }
}

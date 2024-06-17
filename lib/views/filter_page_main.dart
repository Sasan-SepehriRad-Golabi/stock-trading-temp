import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import '../components/top_navigation_bar.dart';
import 'filter_pages/filte_page_specialFilters.dart';
import 'filter_pages/filter_page_myFilters.dart';

// ignore: must_be_immutable
class FilterPageMain extends StatelessWidget {
  FilterController fpController = Get.find<FilterController>();
  FilterPageMain({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopNavigation(),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26, blurRadius: 1, spreadRadius: 0)
                ],
              ),
              child: SizedBox(
                height: 45,
                child: GetBuilder<FilterController>(
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {
                              controller.updateTopSelectedChoice("myFilters");
                            },
                            child: controller.topSelectedChoice == "myFilters"
                                ? Column(children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "فیلتر های من",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color:
                                                controller.topSelectedChoice ==
                                                        "myFilters"
                                                    ? Colors.blue
                                                    : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Expanded(
                                      child: FittedBox(
                                        child: Center(
                                          child: Text(
                                            "*",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    )
                                  ])
                                : Column(
                                    children: [
                                      Text(
                                        "فیلتر های من",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color:
                                                controller.topSelectedChoice ==
                                                        "myFilters"
                                                    ? Colors.blue
                                                    : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                        TextButton(
                          onPressed: () {
                            controller
                                .updateTopSelectedChoice("specialFilters");
                          },
                          child: controller.topSelectedChoice ==
                                  "specialFilters"
                              ? Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "اختصاصی",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color:
                                                controller.topSelectedChoice ==
                                                        "specialFilters"
                                                    ? Colors.blue
                                                    : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Expanded(
                                      child: FittedBox(
                                        child: Center(
                                          child: Text(
                                            "*",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    Text(
                                      "اختصاصی",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: controller.topSelectedChoice ==
                                                  "specialFilters"
                                              ? Colors.blue
                                              : Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                        ),
                        TextButton(
                            onPressed: () {
                              controller.updateTopSelectedChoice("strFilters");
                            },
                            child: controller.topSelectedChoice == "strFilters"
                                ? Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text("استراتژی",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: controller
                                                            .topSelectedChoice ==
                                                        "strFilters"
                                                    ? Colors.blue
                                                    : Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const Expanded(
                                        child: FittedBox(
                                          child: Center(
                                            child: Text(
                                              "*",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Text("استراتژی",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: controller
                                                          .topSelectedChoice ==
                                                      "strFilters"
                                                  ? Colors.blue
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )),
                        TextButton(
                            onPressed: () {
                              controller
                                  .updateTopSelectedChoice("marketFilters");
                            },
                            child: controller.topSelectedChoice ==
                                    "marketFilters"
                                ? Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text("فروشگاه",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: controller
                                                            .topSelectedChoice ==
                                                        "marketFilters"
                                                    ? Colors.blue
                                                    : Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const Expanded(
                                        child: FittedBox(
                                          child: Center(
                                            child: Text(
                                              "*",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Text("فروشگاه",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: controller
                                                          .topSelectedChoice ==
                                                      "marketFilters"
                                                  ? Colors.blue
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )),
                      ],
                    );
                  },
                ),
              ),
            ),
            GetBuilder<FilterController>(builder: (controller) {
              return Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.all(0),
                      color: Colors.grey[100],
                      child: Builder(builder: (context) {
                        if (controller.topSelectedChoice == "myFilters") {
                          print("1");

                          return FilterPageMyFilters();
                        } else if (controller.topSelectedChoice ==
                            "specialFilters") {
                          print("2");

                          return const FilterPageSpecialFilters();
                        } else {
                          print("3");

                          return Container();
                        }
                      })),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

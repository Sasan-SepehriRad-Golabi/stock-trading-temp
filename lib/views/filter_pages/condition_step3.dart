import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:stock_trading_app/views/filter_pages/condition_step3.dart';

import '../../components/filter_conditions.dart';

class ConditionStep3 extends StatelessWidget {
  ConditionStep3({super.key});
  FilterController fController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: Container(
              color: Colors.white,
              child: ListView(children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  color: Colors.white,
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const FittedBox(
                                child: Text(
                                  "مرحله قبل",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    fController
                                        .selectedFilterConditionsStepsremove(3);
                                    Get.back();
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/icon/arrow-right-3.svg',
                                    color: Colors.blue,
                                  )),
                              const SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<FilterController>(
                  builder: (controller) {
                    return SizedBox(
                      height: 70,
                      child: Material(
                        elevation: 10,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          color: Colors.white,
                          child: Center(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: controller
                                              .selectedFilterConditionsSteps
                                              .contains(1)
                                          ? Colors.blue
                                          : Colors.white,
                                      border: Border.all(
                                          color: Colors.blue, width: 2),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 25,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                          height: 2,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                "....",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: controller
                                                .selectedFilterConditionsSteps
                                                .contains(2)
                                            ? Colors.blue
                                            : Colors.white,
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                "....",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                          height: 2,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: controller
                                                .selectedFilterConditionsSteps
                                                .contains(3)
                                            ? Colors.blue
                                            : Colors.white,
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            "3",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 25,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                          height: 2,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                "....",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: controller
                                                .selectedFilterConditionsSteps
                                                .contains(4)
                                            ? Colors.blue
                                            : Colors.white,
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                "....",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                          height: 2,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: controller
                                                .selectedFilterConditionsSteps
                                                .contains(5)
                                            ? Colors.blue
                                            : Colors.white,
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                "....",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                          height: 2,
                                          child: Container(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: controller
                                                .selectedFilterConditionsSteps
                                                .contains(6)
                                            ? Colors.blue
                                            : Colors.white,
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ]),
            ),
          ),
          Expanded(
            child: Scaffold(
              body: GetBuilder<FilterController>(
                builder: ((controller) {
                  return controller.selectedPage == 2
                      ? Container(
                          color: Colors.greenAccent,
                        )
                      : controller.selectedPage == 5
                          ? Container(
                              color: Colors.amber,
                            )
                          : ListView.builder(
                              itemCount:
                                  controller.filter.conditions!.step3!.length,
                              itemBuilder: (context, index) {
                                return Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Material(
                                        elevation: 10,
                                        child: Row(children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                controller.filter.conditions!
                                                    .step3 = ((FilterConditions
                                                            .Conditions[
                                                        controller
                                                            .selectedPage])[
                                                    "steps"])["step3"];
                                                controller.updateFilter();
                                                Get.to(ConditionStep3());
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Center(
                                                  child: Text(
                                                    controller
                                                        .filter
                                                        .conditions!
                                                        .step3![index],
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ])));
                              });
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

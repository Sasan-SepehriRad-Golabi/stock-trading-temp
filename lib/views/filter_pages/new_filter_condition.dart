import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/components/condition_object.dart';
import 'package:stock_trading_app/components/filter_conditions.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:stock_trading_app/views/filter_pages/condition_step2.dart';

class NewFilterCondition extends StatelessWidget {
  NewFilterCondition({Key? key}) : super(key: key);
  FilterController fController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(children: [
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
                            const Text(
                              "شرط جدید",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                                onTap: () {
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
                                            color: Colors.black54, fontSize: 8),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          style:
                                              TextStyle(color: Colors.black54),
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
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: const Text(
              "یکی از گزینه های زیر را انتخاب کنید",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 11),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        GestureDetector(
          onTap: () {
            print(((FilterConditions.Conditions[0])["steps"])["step2-titles"]);
            fController.selectedPage = 0;
            fController.filter.conditions!.step1 =
                (FilterConditions.Conditions[0])["name"];
            fController.filter.conditions!.step2 =
                ((FilterConditions.Conditions[0])["steps"])["step2-titles"];
            fController.updateFilter();
            fController.selectedFilterConditionsStepsadd(2);
            Get.to(ConditionStep2());
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text("اندیکاتور"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        GestureDetector(
          onTap: () {
            print(((FilterConditions.Conditions[1])["steps"])["step2-titles"]);
            fController.selectedPage = 1;
            fController.filter.conditions!.step1 =
                (FilterConditions.Conditions[1])["name"];
            fController.filter.conditions!.step2 =
                ((FilterConditions.Conditions[1])["steps"])["step2-titles"];
            fController.updateFilter();
            fController.selectedFilterConditionsStepsadd(2);
            Get.to(ConditionStep2());
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text("معاملات"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        GestureDetector(
          onTap: (() {
            print(((FilterConditions.Conditions[1])["steps"])["step2-titles"]);
            fController.selectedPage = 2;
            fController.filter.conditions!.step1 =
                (FilterConditions.Conditions[2])["name"];
            fController.filter.conditions!.step2 =
                ((FilterConditions.Conditions[2])["steps"])["step2-titles"];
            fController.updateFilter();
            fController.selectedFilterConditionsStepsadd(2);
            Get.to(ConditionStep2());
          }),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text("کندل"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        GestureDetector(
          onTap: () {
            print(((FilterConditions.Conditions[1])["steps"])["step2-titles"]);
            fController.selectedPage = 3;
            fController.filter.conditions!.step1 =
                (FilterConditions.Conditions[3])["name"];
            fController.filter.conditions!.step2 =
                ((FilterConditions.Conditions[3])["steps"])["step2-titles"];
            fController.updateFilter();
            fController.selectedFilterConditionsStepsadd(2);
            Get.to(ConditionStep2());
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text("حقیقی/حقوقی"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        GestureDetector(
          onTap: () {
            print(((FilterConditions.Conditions[1])["steps"])["step2-titles"]);
            fController.selectedPage = 4;
            fController.filter.conditions!.step1 =
                (FilterConditions.Conditions[4])["name"];
            fController.filter.conditions!.step2 =
                ((FilterConditions.Conditions[4])["steps"])["step2-titles"];
            fController.updateFilter();
            fController.selectedFilterConditionsStepsadd(2);
            Get.to(ConditionStep2());
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text("بنیادی"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        GestureDetector(
          onTap: () {
            print(((FilterConditions.Conditions[1])["steps"])["step2-titles"]);
            fController.selectedPage = 5;
            fController.filter.conditions!.step1 =
                (FilterConditions.Conditions[5])["name"];
            fController.filter.conditions!.step2 =
                ((FilterConditions.Conditions[5])["steps"])["step2-titles"];
            fController.updateFilter();
            fController.selectedFilterConditionsStepsadd(2);
            Get.to(ConditionStep2());
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text("محاسباتی"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
      ]),
    );
  }
}

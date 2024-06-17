import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:stock_trading_app/views/filter_pages/new_filter_condition.dart';
import '../../components/easy_build_filter_myClipper.dart';
import '../../components/jalali_calender.dart';

class EasyBuiltFilters extends StatelessWidget {
  EasyBuiltFilters({Key? key}) : super(key: key);
  FilterController fController = Get.find();
  @override
  Widget build(BuildContext context) {
    double topviewport = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Material(
                elevation: 2,
                child: Container(
                  margin: MediaQuery.of(context).viewPadding.top > 0
                      ? EdgeInsets.fromLTRB(0, topviewport, 0, 0)
                      : const EdgeInsets.fromLTRB(0, 32, 0, 0),
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/icon/share.svg',
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/images/icon/play.svg',
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "طراحی آسان",
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
                                ),
                              ),
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
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.grey[100],
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .9,
                            height: 40,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextField(
                                decoration: InputDecoration(
                                  label: Row(
                                    children: [
                                      const Text(
                                        "نام فیلتر",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/icon/search-normal-1.svg',
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  disabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: GetBuilder<FilterController>(
                              builder: (controller) => SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * .9,
                                child: Center(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.updateNewDatePlus(
                                                    controller.selectedDate);
                                              },
                                              child: const Icon(
                                                Icons.arrow_back_ios,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () async {
                                                String? pickedDate =
                                                    await jalaliCalendarPicker(
                                                        context: context);
                                                List<String> arr =
                                                    pickedDate != null
                                                        ? pickedDate
                                                            .substring(0, 10)
                                                            .split("-")
                                                        : [];
                                                print(arr);
                                                if (arr.length >= 3) {
                                                  int year = 0,
                                                      month = 0,
                                                      day = 0;
                                                  int.tryParse(arr[0].trim()) !=
                                                          null
                                                      ? year = int.parse(
                                                          arr[0].trim())
                                                      : year = 1401;
                                                  int.tryParse(arr[1].trim()) !=
                                                          null
                                                      ? month = int.parse(
                                                          arr[1].trim())
                                                      : month = 9;
                                                  int.tryParse(arr[2].trim()) !=
                                                          null
                                                      ? day = int.parse(
                                                          arr[2].trim())
                                                      : day = 10;
                                                  Jalali Jdt =
                                                      Jalali(year, month, day);
                                                  DateTime dt =
                                                      Jdt.toDateTime();
                                                  controller.updateNewDate(dt);
                                                }
                                              },
                                              child: Text(
                                                "${controller.getNewDate().year}/${controller.getNewDate().month}/${controller.getNewDate().day}",
                                                style: const TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.updateNewDateMinus(
                                                    controller.selectedDate);
                                              },
                                              child: SvgPicture.asset(
                                                'assets/images/icon/arrow-right-3.svg',
                                                color: Colors.blue,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "اجرای فیلتر در تاریخ خاص",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: GetBuilder<FilterController>(
                              builder: (controller) => SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width * .9,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: () {
                                            // delete designed filter
                                          },
                                          child: SvgPicture.asset(
                                            'assets/images/icon/trash.svg',
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 4,
                                          child: FittedBox(
                                            child: Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "MCD Line (12,26,9,close)",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        " MCD Line (12,26,9,close)",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        "را رو به بالا قطع کرد. ",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: Colors
                                                                .grey.shade700),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          )),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: Colors.blue.shade500),
                                        child: const SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: FittedBox(
                                            child: Text("A"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: GetBuilder<FilterController>(
                              builder: (controller) => SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width * .9,
                                child: Center(
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: GestureDetector(
                                      onTap: () {
                                        // add new filter condition
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(NewFilterCondition());
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            SvgPicture.asset(
                                              'assets/images/icon/add.svg',
                                              width: 15,
                                              height: 15,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            const Text(
                                              "افزودن شرط جدید",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
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
              )
            ],
          ),
          Positioned(
            left: 10,
            bottom: 70,
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return GetBuilder<FilterController>(
                        builder: (controller) => Stack(
                          children: [
                            Positioned(
                              top: MediaQuery.of(context).size.height / 4,
                              left: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height *
                                      (3 / 4),
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: ListView(
                                      children: [
                                        ClipPath(
                                          clipper: MyClipper(),
                                          child: Container(
                                            height: 30,
                                            color: Colors.blue,
                                            child: const Center(
                                              child: Icon(
                                                Icons.arrow_drop_down_rounded,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: SizedBox(
                                            height: 20,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                SvgPicture.asset(
                                                    'assets/images/icon/setting-4.svg'),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                const DefaultTextStyle(
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16),
                                                  child: Text(
                                                    "تنظیمات بیشتر",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          height: 1,
                                          child: Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 25,
                                            child: Row(
                                              children: const [
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                DefaultTextStyle(
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  child: Text(
                                                      "چه زمانی شروع می شوند؟"),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Material(
                                                    child: Checkbox(
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                        ),
                                                        value: controller
                                                            .easyBuiltAllConditionsCheckBox,
                                                        onChanged:
                                                            (bool? value) {
                                                          controller
                                                              .updatefilterCheckboxes1(
                                                                  value);
                                                        }),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: DefaultTextStyle(
                                                          style: (controller
                                                                          .easyBuiltAllConditionsCheckBox !=
                                                                      null &&
                                                                  controller
                                                                      .easyBuiltAllConditionsCheckBox!)
                                                              ? const TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)
                                                              : const TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black54,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal),
                                                          child: const Text(
                                                              "وقتی تمام شروط اتفاق افتاد"),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Material(
                                                    child: Checkbox(
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                        ),
                                                        value: controller
                                                            .easyBuiltAtLeastOneConditionsCheckBox,
                                                        onChanged:
                                                            (bool? value) {
                                                          controller
                                                              .updatefilterCheckboxes2(
                                                                  value);
                                                        }),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: DefaultTextStyle(
                                                          style: (controller
                                                                          .easyBuiltAtLeastOneConditionsCheckBox !=
                                                                      null &&
                                                                  controller
                                                                      .easyBuiltAtLeastOneConditionsCheckBox!)
                                                              ? const TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)
                                                              : const TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black54,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal),
                                                          child: const Text(
                                                              "وقتی حداقل یک شرط اتفاق افتاد"),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Material(
                                                    child: Checkbox(
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                        ),
                                                        value: controller
                                                            .easyBuiltOneOfTwoCheckBoxes,
                                                        onChanged:
                                                            (bool? value) {
                                                          controller
                                                              .updatefilterCheckboxes3(
                                                                  value);
                                                        }),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: DefaultTextStyle(
                                                          style: (controller
                                                                          .easyBuiltOneOfTwoCheckBoxes !=
                                                                      null &&
                                                                  controller
                                                                      .easyBuiltOneOfTwoCheckBoxes!)
                                                              ? const TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)
                                                              : const TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black54,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal),
                                                          child: const Text(
                                                              "ترکیب شروط"),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ]),
                                        Material(
                                          child: SizedBox(
                                            height: 40,
                                            child: Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 0, 10, 0),
                                              child: const TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(6),
                                                  hintText:
                                                      "مثال (A and B) or C",
                                                  hintTextDirection:
                                                      TextDirection.ltr,
                                                  hintStyle: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.black54),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                12)),
                                                    borderSide: BorderSide(
                                                        color: Colors.blue),
                                                  ),
                                                  disabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                12)),
                                                    borderSide: BorderSide(
                                                        color: Colors.blue),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                12)),
                                                    borderSide: BorderSide(
                                                        color: Colors.blue),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .9,
                                          child: Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            color: Colors.black54,
                                          ),
                                        ),
                                        FittedBox(
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .7,
                                            child: Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 10, 0),
                                              child: const DefaultTextStyle(
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 11),
                                                  child: Text(
                                                      "شروط روی چه نمادهایی اعمال شوند؟")),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Directionality(
                                          textDirection: TextDirection.ltr,
                                          child: Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 0, 4, 0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    DefaultTextStyle(
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black54),
                                                        child: Text(
                                                            "همه نمادها(پیشفرض)"))
                                                  ],
                                                )),
                                                Expanded(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    const DefaultTextStyle(
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black54),
                                                        child: Text(
                                                            "لیست نمادها")),
                                                    SvgPicture.asset(
                                                        'assets/images/icon/tick-square.svg')
                                                  ],
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 500,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                child: SvgPicture.asset(
                  'assets/images/icon/setting-4.svg',
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

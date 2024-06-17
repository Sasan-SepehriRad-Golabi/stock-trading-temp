import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:stock_trading_app/views/filter_pages/tse_results.dart';
import '../../components/jalali_calender.dart';

class TSEFilters extends StatelessWidget {
  TSEFilters();
  FilterController fController = Get.find();
  Future<String?> saveFilter(String filterType) async {
    try {
      if (fController.filter.name != null ||
          fController.filter.name!.trim().isNotEmpty) {
        print(fController.filter.name);
        Directory directory = await getApplicationDocumentsDirectory();
        File file = await File('${directory.path}/${fController.filter.name}')
            .create(recursive: true);
        Map tseinfos = {
          "Name": fController.filter.name,
          "Date": fController.filter.filterDateTime == null
              ? null
              : fController.selectedDate.toIso8601String(),
          "Code": fController.filter.code,
          "Explain": fController.filter.explain,
          "Type": filterType
        };
        File ttt = await file.writeAsString(jsonEncode(tseinfos));
        print(ttt.path);
        print(await ttt.readAsString());
        return "Ok";
      } else {
        return "Er1";
      }
    } catch (e) {
      return "Er2";
    }
  }

  @override
  Widget build(BuildContext context) {
    fController.filter.filterDateTime =
        fController.selectedDate.toIso8601String();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(children: [
        Material(
          elevation: 2,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 7, 5, 8),
            height: 55,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/icon/share.svg',
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const FilterResults());
                  },
                  child: SvgPicture.asset(
                    'assets/images/icon/play.svg',
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    String? res = await saveFilter("tse");
                    print(res);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        dismissDirection: DismissDirection.up,
                        elevation: 4,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        duration: const Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.all(10),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: res == "Ok"
                                  ? const Text(
                                      "فیلتر ذخیره شد",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: Colors.white),
                                    )
                                  : res == "Er1"
                                      ? const Text(
                                          "نام فیلتر باید وارد شود",
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              color: Colors.deepOrange),
                                        )
                                      : res == "E22"
                                          ? const Text(
                                              "خطا در ذخیره فیلتر",
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  color: Colors.deepOrange),
                                            )
                                          : const Text(
                                              "خطا در ذخیره فیلتر",
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  color: Colors.deepOrange),
                                            ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.save_rounded,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "ثبت فیلتر TSE",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
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
        const SizedBox(
          height: 12,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          height: 45,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GetBuilder<FilterController>(
              builder: (controller) => TextField(
                onChanged: (value) {
                  controller.filter.name = value;
                  controller.tseOverallUpdate();
                  print(controller.filter.name);
                },
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(6),
                  label: Text(
                    "نام فیلتر",
                    style: TextStyle(fontSize: 10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Material(
          color: Colors.transparent,
          child: GetBuilder<FilterController>(
            builder: (controller) => SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * .9,
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller
                                    .updateNewDatePlus(controller.selectedDate);
                                controller.filter.filterDateTime =
                                    controller.selectedDate.toIso8601String();
                              },
                              child: SvgPicture.asset(
                                'assets/images/icon/arrow-left-3.svg',
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () async {
                                String? pickedDate = await jalaliCalendarPicker(
                                    context: context);
                                List<String> arr = pickedDate != null
                                    ? pickedDate.substring(0, 10).split("-")
                                    : [];
                                if (arr.length >= 3) {
                                  int year = 0, month = 0, day = 0;
                                  int.tryParse(arr[0].trim()) != null
                                      ? year = int.parse(arr[0].trim())
                                      : year = 1401;
                                  int.tryParse(arr[1].trim()) != null
                                      ? month = int.parse(arr[1].trim())
                                      : month = 9;
                                  int.tryParse(arr[2].trim()) != null
                                      ? day = int.parse(arr[2].trim())
                                      : day = 10;
                                  Jalali Jdt = Jalali(year, month, day);
                                  DateTime dt = Jdt.toDateTime();
                                  controller.updateNewDate(dt);
                                  controller.filter.filterDateTime =
                                      dt.toIso8601String();
                                }
                              },
                              child: Text(
                                "${controller.getNewDate().year}/${controller.getNewDate().month}/${controller.getNewDate().day}",
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.updateNewDateMinus(
                                    controller.selectedDate);
                                controller.filter.filterDateTime =
                                    controller.selectedDate.toIso8601String();
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
        ),
        const SizedBox(
          height: 8,
        ),
        Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SizedBox(
              height: 120,
              child: GetBuilder<FilterController>(
                builder: (controller) => TextField(
                  onChanged: (value) {
                    controller.filter.code = value;
                  },
                  textDirection: TextDirection.rtl,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(6),
                      hintText: "کد فیلتر",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(color: Colors.blue, fontSize: 10)),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: null,
                  maxLines: null,
                  expands: true,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Material(
          elevation: 0,
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
            child: SizedBox(
              height: 120,
              child: GetBuilder<FilterController>(
                builder: (controller) => TextField(
                  onChanged: (value) {
                    controller.filter.explain = value;
                  },
                  textDirection: TextDirection.rtl,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(6),
                      hintText: "توضیحات",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(color: Colors.blue, fontSize: 10)),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: null,
                  maxLines: null,
                  expands: true,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

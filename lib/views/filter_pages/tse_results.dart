import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:http/http.dart' as http;
import '../../settings.dart' as settings;

class FilterResults extends StatefulWidget {
  const FilterResults({super.key});

  @override
  State<FilterResults> createState() => _FilterResultsState();
}

class _FilterResultsState extends State<FilterResults> {
  FilterController fController = Get.find();
  BuildContext? scaffoldContext;
  Future<String> executeTseFilter() async {
    final response = await http.post(
      Uri.parse(settings.tseFilterApi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "token": settings.sourceArenaApiToken,
        "condition": fController.filter.code ?? ""
      }),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return jsonEncode({"result": "Error"});
    }
  }

  Future<String>? _value;
  @override
  void initState() {
    _value = executeTseFilter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    fController.filter.filterDateTime =
        fController.selectedDate.toIso8601String();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView(
              children: [
                Material(
                  elevation: 2,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 7, 5, 8),
                    height: 55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.noteSticky,
                          color: Colors.deepPurple,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "نتایج فیلتر",
                                textDirection: TextDirection.rtl,
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
              ],
            ),
          ),
          FutureBuilder(
              future: _value,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: Center(
                        child: Material(
                          elevation: 4,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text("داده ها")),
                        ),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.hasError);
                    print(snapshot.error?.toString());
                    return Expanded(
                      child: Center(
                        child: Material(
                          elevation: 4,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text("خطا در فیلتر")),
                        ),
                      ),
                    );
                  } else {
                    return Expanded(
                      child: Center(
                        child: Material(
                          elevation: 4,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              child:
                                  const Text("داده ای برای نمایش وجود ندارد")),
                        ),
                      ),
                    );
                  }
                } else {
                  return Expanded(
                    child: Center(
                        child: CircularProgressIndicator(
                      backgroundColor: Colors.green[900],
                      color: Colors.deepPurple,
                    )),
                  );
                }
              })
        ],
      ),
    );
  }

  showSnackBar1(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "خطا در دریافت اطلاعات",
            style: TextStyle(color: Colors.deepOrange),
          ),
        ],
      ),
      elevation: 4,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

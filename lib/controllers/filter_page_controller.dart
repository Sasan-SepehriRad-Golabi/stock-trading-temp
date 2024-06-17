import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:stock_trading_app/components/condition_object.dart';
import '../components/filter.dart';

class FilterController extends GetxController {
  String topSelectedChoice = "myFilters";
  Jalali newDate = (DateTime.now()).toJalali();
  DateTime selectedDate = DateTime.now();
  Color filterRadioButtonColor = Colors.grey;
  bool? easyBuiltAllConditionsCheckBox = false;
  bool? easyBuiltOneOfTwoCheckBoxes = false;
  bool? easyBuiltAtLeastOneConditionsCheckBox = false;
  int _selectedPage = 1;
  int get selectedPage {
    return _selectedPage;
  }

  double constantValue_in_filter_design = 0.0;
  void set selectedPage(int newPage) {
    _selectedPage = newPage;
    update();
  }

  List<int> selectedFilterConditionsSteps = [1];
  void selectedFilterConditionsStepsadd(int value) {
    selectedFilterConditionsSteps.add(value);
    update();
  }

  void updateFilter() {
    update();
  }

  void selectedFilterConditionsStepsremove(int value) {
    selectedFilterConditionsSteps.remove(value);
    update();
  }

  Filter filter = Filter(
      name: "", code: "", explain: "", type: "", conditions: ConditionObject());

  List<Filter> listOfFilters = [];
  void tseOverallUpdate() {
    update;
  }

  bool addFiltersFinished = false;
  Future<void> getFilters() async {
    Directory dir = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> entities = await dir.list(recursive: false).toList();
    List<File> files = entities.whereType<File>().toList();
    if (files.length == 0) {
      addFiltersFinished = true;
      update();
    } else {
      listOfFilters = [];
      for (int i = 0; i < files.length; i++) {
        try {
          String filterJson = files[i].readAsStringSync();
          Filter res = await addFilter(filterJson);
          listOfFilters.add(res);
          if (i == files.length - 1) {
            addFiltersFinished = true;
            update();
          }
        } catch (e) {}
      }
    }
  }

  Future<Filter> addFilter(String filterJson) async {
    Map<String, dynamic> res = jsonDecode(filterJson);
    return Filter(
        name: res["Name"],
        code: res["Code"],
        explain: res["Explain"],
        type: res["Type"]);
  }

  Future<void> updateListOfFilter() async {
    await getFilters();
  }

  void updatefilterCheckboxes1(bool? allcheckboxes) {
    easyBuiltAllConditionsCheckBox = allcheckboxes;

    update();
  }

  void updatefilterCheckboxes2(bool? oneofconditions) {
    easyBuiltAtLeastOneConditionsCheckBox = oneofconditions;

    update();
  }

  void updatefilterCheckboxes3(bool? bothcheckboxes) {
    easyBuiltOneOfTwoCheckBoxes = bothcheckboxes;

    update();
  }

  void updatefilterRadioButtonColor(int val) {
    val == 0 ? filterRadioButtonColor = Colors.grey : Colors.blue;
    update();
  }

  Jalali getNewDate() {
    return (selectedDate).toJalali();
  }

  updateNewDatePlus(DateTime newVal) {
    newDate = newVal.add(const Duration(days: 1)).toJalali();
    selectedDate = newVal.add(const Duration(days: 1));
    update();
  }

  updateNewDateMinus(DateTime newVal) {
    newDate = newVal.subtract(const Duration(days: 1)).toJalali();
    selectedDate = newVal.subtract(const Duration(days: 1));
    update();
  }

  updateNewDate(DateTime newVal) {
    selectedDate = newVal;
    update();
  }

  updateTopSelectedChoice(String newVal) {
    topSelectedChoice = newVal;
    update();
  }
}

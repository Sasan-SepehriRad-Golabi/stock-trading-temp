import 'package:get/get.dart';

class BottomMenueController extends GetxController {
  String? selectedItem = "none";
  updateBottomSelectedItem(String newVal) {
    selectedItem = newVal;
    update();
  }
}

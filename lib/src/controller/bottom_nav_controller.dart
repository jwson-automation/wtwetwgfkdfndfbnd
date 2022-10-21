import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/upload_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/5_upload.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  static BottomNavController get to => Get.find();
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.UPLOAD:
        Get.to(() => Upload(), binding: BindingsBuilder(() {
          Get.put(UploadeController());
        }));
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    pageIndex(value);
  }
}

import 'package:get/get.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.HOME:
        // TODO: Handle this case.
        break;
      case PageName.SEARCH:
        // TODO: Handle this case.
        break;
      case PageName.UPLOAD:
        // TODO: Handle this case.
        break;
      case PageName.ACTIVITY:
        // TODO: Handle this case.
        break;
      case PageName.MYPAGE:
        // TODO: Handle this case.
        break;
    }
    pageIndex(value);
  }
}

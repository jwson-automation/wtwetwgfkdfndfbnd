import 'package:get/instance_manager.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/auth_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/bottom_nav_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/mypage_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/upload_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }

  static additionalBinding() {
    Get.put(MypageController(), permanent: true);
  }
}

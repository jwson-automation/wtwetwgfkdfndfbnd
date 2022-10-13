import 'package:get/instance_manager.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/AuthController.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/bottom_nav_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }
}

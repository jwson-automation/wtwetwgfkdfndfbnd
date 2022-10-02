import 'package:get/instance_manager.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/AuthController.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}

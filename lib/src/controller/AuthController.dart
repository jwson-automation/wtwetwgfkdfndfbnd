import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';
import 'package:wtwetwgfkdfndfbnd/src/repository/user_repository.dart';

class AuthController extends GetxController {
  Future<OUser?> loginUser(String uid) async {
    //db 조회
    var userData = await UserRepository.loginUserByUid(uid);
    print(userData);
    return userData;
  }
}

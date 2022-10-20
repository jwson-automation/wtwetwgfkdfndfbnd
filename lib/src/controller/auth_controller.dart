import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wtwetwgfkdfndfbnd/src/binding/init_binding.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';
import 'package:wtwetwgfkdfndfbnd/src/repository/user_repository.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  Rx<OUser> user = OUser().obs;

  Future<OUser?> loginUser(String uid) async {
    //db 조회
    var userData = await UserRepository.loginUserByUid(uid);
    if (userData != null) {
      user(userData);
      InitBinding.additionalBinding();
    }
    ;
    return userData;
  }

  void signup(OUser signupUser, XFile? thumbnail) async {
    if (thumbnail == null) {
      _submitSignup(signupUser);
    } else {
      //확장자를 어떻게 붙일지
      //이미지 피커로 가져오기 떄문에 벨리데이션은 하지 않음
      var task = uploadXFile(thumbnail,
          '${signupUser.uid}/profile.${thumbnail.path.split('.').last}');
      task.snapshotEvents.listen((event) async {
        print(event.bytesTransferred);
        if (event.bytesTransferred == event.totalBytes &&
            event.state == TaskState.success) {
          var downloadUrl = await event.ref.getDownloadURL();
          var updatedUserData = signupUser.copyWith(thumbnail: downloadUrl);
          _submitSignup(updatedUserData);
        }
      });
    }
  }

  UploadTask uploadXFile(XFile file, String filename) {
    var f = File(file.path);
    var ref = FirebaseStorage.instance.ref().child('users').child(filename);

    final metadata = SettableMetadata(
      contentType: 'image/jpeg',
      customMetadata: {'picked-file-path': file.path},
    );

    return ref.putFile(f, metadata);

    //users/{uid}/profile.jpg or profile.png
  }

  void _submitSignup(OUser signupUser) async {
    var result = await UserRepository.signup(signupUser);
    if (result) {
      loginUser(signupUser.uid!);
    }
  }
}

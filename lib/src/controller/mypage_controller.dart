import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/auth_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class MypageController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  Rx<OUser> targetUser = OUser().obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    _loadData();
  }

  void setTargetUser() {
    // 마이 페이지 컨트롤러가 새로운 친구 페이지인지 확인하는 것
    var uid = Get.parameters['targetUid'];
    if (uid == null) {
      targetUser(AuthController.to.user.value);
    } else {
      //상대 UID를 조회해서 넣어주는것
      targetUser();
    }
  }

  void _loadData() {
    setTargetUser();

    // 포스트 리스트 로드,
    // 사용자 정보 로드,
  }
}

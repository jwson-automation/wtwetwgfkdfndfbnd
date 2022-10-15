import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/mypage_controller.dart';

class MyPage extends GetView<MypageController> {
  const MyPage({super.key});

  Widget build(BuildContext context) {
    return TabBar(
      controller: controller.tabController,
      indicatorColor: Colors.white,
      indicatorWeight: 1,
      tabs: [
        Container(
          width: 5,
          height: 5,
        ),
        Container(
          width: 5,
          height: 5,
        ),
      ],
    );
  }
}

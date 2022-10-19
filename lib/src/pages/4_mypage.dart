import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/avatar_widget.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/mypage_controller.dart';

class MyPage extends GetView<MypageController> {
  const MyPage({super.key});

  Widget _tabMenue() {
    return TabBar(
      controller: controller.tabController,
      indicatorColor: Colors.white,
      indicatorWeight: 1,
      tabs: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'daily upload 버튼',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _mypageinformation() {
    return Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AvatarWidget(
                  type: AvatarType.TYPE3,
                  thumbPath: controller.targetUser.value.thumbnail!,
                  size: 140),
              SizedBox(
                height: 10,
              ),
              Text(
                controller.targetUser.value.description!,
                style: TextStyle(fontSize: 13, color: Colors.white),
              )
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black,
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(
                  controller.targetUser.value.nickname!,
                  style: TextStyle(fontSize: 20),
                ))),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: [
            _mypageinformation(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '운동 스트릭 : 13일차',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '라이벌 : 24명',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                '여기에 잔디가 들어감',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _tabMenue(),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                '< 2022년 10월 16일 운동 결과 >',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Column(children: [
              Text(
                '벤치프레스 : 100kg',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '데드리프트 : 190kg',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '(백)스쿼트 : 180kg',
                style: TextStyle(color: Colors.white),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 150,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '인바디 업로드 버튼',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(children: [
              Text(
                '근육량 : 40kg',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '체지방률 : 12%',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                ' 저번 달 대비 근육량 성장: 2.3kg',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

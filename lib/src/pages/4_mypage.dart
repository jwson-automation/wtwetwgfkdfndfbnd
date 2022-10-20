import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/avatar_widget.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/mypage_controller.dart';

class MyPage extends GetView<MypageController> {
  const MyPage({super.key});

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    controller.targetUser.value.height!,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    controller.targetUser.value.weight!,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Text(
                controller.targetUser.value.phonenubmer!,
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              Text(
                controller.targetUser.value.email!,
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              Text(
                controller.targetUser.value.description!,
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
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
            Container(
                // 가로선
                width: 500,
                child: Divider(color: Colors.white, thickness: 0.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '운동 스트릭 : 13일차',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
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
              height: 5,
            ),
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
              ),
              child: Center(
                child: Text(
                  '잔디',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // _tabMenue(),
            SizedBox(
              height: 15,
            ),

            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.amberAccent[400],
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.bar_chart,
                          size: 100,
                        ),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Column(children: [
                    Container(
                      child: Text(
                        '< 3대 470kg >',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Text(
                      '벤치프레스 : 100kg',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      '데드리프트 : 190kg',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      '(백)스쿼트 : 180kg',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                // 가로선
                width: 500,
                child: Divider(color: Colors.white, thickness: 0.5)),
            Container(
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
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
              height: 15,
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

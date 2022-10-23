import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/avatar_widget.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/mypage_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/history_user.dart';

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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '운동 스트릭 : 4일차',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            StreamBuilder<List<His_user>>(
                stream: readHistory(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final _hisusers = snapshot.data!;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: _hisusers.map(buildUser).toList(),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
            Container(
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
              ),
            ),
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

  Stream<List<His_user>> readHistory() {
    var year = DateFormat('yy').format(DateTime.now());
    final FirebaseAuth auth = FirebaseAuth.instance;
    var user = auth.currentUser;
    final uid = user!.uid;
    return FirebaseFirestore.instance
        .collection('history')
        .doc('$uid')
        .collection('$year년')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => His_user.fromJson(doc.data())).toList());
  }

  Widget buildUser(His_user _his_user) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 20,
          height: 20,
          color: Colors.green,
        ),
      );
}

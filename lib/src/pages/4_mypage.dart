import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  Widget _mypageinformation() {
    return Column(
      children: [
        Container(
          child: Icon(
            Icons.person_pin,
            size: 100,
            color: Colors.white,
          ),
        ),
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
        Container(
          width: 150,
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
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'nickname',
            style: TextStyle(fontSize: 20),
          ),
        ),
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
          children: [_mypageinformation()],
        ),
      ),
    );
  }
}

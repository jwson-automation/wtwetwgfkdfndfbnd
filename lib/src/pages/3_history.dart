import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/date.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/history_user.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  Widget _historyBox(String date) {
    return Center(
      child: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        child: Center(
          child: Text(
            '$date일 의 운동기록',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
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
            '운동 히스토리',
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
      body: Container(
        color: Colors.black,
        child: StreamBuilder<List<His_user>>(
            stream: readHistory(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final _hisusers = snapshot.data!;

                return ListView(
                  // reverse: true,
                  children: _hisusers.map(buildUser).toList(),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
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

  Widget buildUser(His_user _his_user) => Container(
        width: 500,
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        child: Column(children: [
          Text(
            '운동기록',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '${_his_user.date}',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '스쿼트 : ${_his_user.squat}kg',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '벤치프레스 : ${_his_user.benchpress}kg',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '데드리프트 : ${_his_user.deadlift}kg',
            style: TextStyle(color: Colors.white),
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.delete,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {
          //     print('삭제하기');
          //     print('${_his_user.date} : ${_his_user.uid}');
          //     final _hisusers = FirebaseFirestore.instance
          //         .collection('history')
          //         .doc('${_his_user.date} : ${_his_user.uid}');
          //     _hisusers.delete();
          //   },
          // )
        ]),
      );
}

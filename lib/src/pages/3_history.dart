import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        body: StreamBuilder(
          stream: readHistory(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final His_user = snapshot.data!;

              return ListView(children: His_user.map(buildUser).toList,)
            }
          },
        ));
  }

  Stream<List<His_user>> readHistory() => FirebaseFirestore.instance
      .collection('history')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => His_user.fromJson(doc.data())).toList());
}

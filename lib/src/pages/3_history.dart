import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: [
            SingleChildScrollView(
                // controller: controller,
                child: Column(
              children: [
                _historyBox('2022-10-16'),
                _historyBox('2022-10-17'),
                _historyBox('2022-10-18'),
                _historyBox('2022-10-19'),
                _historyBox('2022-10-20'),
                _historyBox('2022-10-21'),
                _historyBox('2022-10-22'),
                _historyBox('2022-10-23'),
                _historyBox('2022-10-24'),
                _historyBox('2022-10-25'),
                _historyBox('2022-10-26'),
                _historyBox('2022-10-27'),
                _historyBox('2022-10-28'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

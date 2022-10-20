import 'package:flutter/material.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/Live_notice.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/seperated_feature/notice_scroll.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.circle_outlined),
            SizedBox(width: 10),
            Text('오운완')
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        // centerTitle: mounted,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  // boxShadow: BoxShadow(10),
                  border: Border.all(color: Colors.red)),
              alignment: Alignment.center,
              // setState 넣어서 실시간으로 업데이트 되도록 해주기
              child: Text(
                '현재까지 가입자 수 : 2389명',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'Schyler'),
              ),
            ),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
            Notice(),
          ],
        ),
      ),
    );
  }
}

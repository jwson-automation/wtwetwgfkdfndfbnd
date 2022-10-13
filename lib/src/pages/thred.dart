import 'package:flutter/material.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/Live_notice.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/notice_scroll.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                // boxShadow: BoxShadow(10),
                border: Border.all(color: Colors.red)),
            alignment: Alignment.center,
            // color: Colors.red[200],
            child: Text(
              '오늘 운동 완료자 : 389명',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: 'Schyler'),
            ),
          ),
          NoticePage(),
          LiveNotice(),
        ],
      ),
    );
  }
}

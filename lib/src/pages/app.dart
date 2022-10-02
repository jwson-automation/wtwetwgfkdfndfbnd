import 'package:flutter/material.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/Live_notice.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/notice_scroll.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
          centerTitle: mounted,
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
        ));
    bottomNavigationBar:
    BottomAppBar(
      child: Container(
        height: 50,
        color: Colors.black,
        child: Row(children: [
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
        ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
      ),
    )

        // bottomNavigationBar:
        // BottomNavigationBar(items: [BottomNavigationBarItem(label: 'home')]),
        ;
  }
}

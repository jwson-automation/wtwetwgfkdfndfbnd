import 'package:flutter/material.dart';

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    child: Icon(
                      Icons.circle_outlined,
                      color: Colors.grey[350],
                      size: 100.0,
                    ),
                    // Text('Image'),
                    // color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                // color: Colors.red,
                                )),
                        // color: Colors.blue,
                        child: Text('오늘 사람들은 평균 48분동안 운동했습니다.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Schyler')),
                      ),
                      SizedBox(
                        // color: Colors.blue,
                        height: 3,
                        // child: Text('right'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            // color: Colors.blue,

                            child: Text(
                              'Live',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.circle,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
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
        );
  }
}

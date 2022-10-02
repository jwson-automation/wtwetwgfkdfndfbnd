import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
    );
  }
}

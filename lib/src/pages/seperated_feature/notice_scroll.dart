import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  const Notice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                child: Icon(
                  Icons.circle_outlined,
                  color: Colors.grey[350],
                  size: 20.0,
                ),
                // Text('Image'),
                // color: Colors.red,
              ),
            ),
            Flexible(
              flex: 9,
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
                    child: Text('오늘 A씨가 벤치프레스 300kg을 들었습니 다.',
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
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

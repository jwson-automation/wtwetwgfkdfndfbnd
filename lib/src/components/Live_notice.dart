import 'package:flutter/material.dart';

class LiveNotice extends StatelessWidget {
  const LiveNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 50,
          color: Colors.blue,
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.health_and_safety_sharp,
              color: Colors.pink,
            ),
            Text(
              'semi',
              style: TextStyle(color: Colors.blueAccent),
            )
          ],
        ),
      ],
    );
  }
}

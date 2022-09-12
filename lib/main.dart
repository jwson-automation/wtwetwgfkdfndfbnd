// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/pages/components/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: '오운완',
      // theme: ThemeData(
      //     primarySwatch: Colors.red,
      //     appBarTheme: const AppBarTheme(
      //         backgroundColor: Colors.black,
      //         titleTextStyle: TextStyle(
      //           fontSize: 20,
      //           color: Colors.white,
      //         ))),
      home: const App(),
    );
  }
}

// DefaultTextStyle (
//   // child: Container(chilld: ,),
//   style : TextStyle(color: Colors.white)
// )
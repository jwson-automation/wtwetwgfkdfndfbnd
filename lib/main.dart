// import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/firebase_options.dart';
import 'package:wtwetwgfkdfndfbnd/src/binding/init_binding.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // 앱이 ios, android에 맞게 적용되도록 하는 코드
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitBinding(),
      home: Root(),
    );
  }
}

// DefaultTextStyle (
//   // child: Container(chilld: ,),
//   style : TextStyle(color: Colors.white)
// )
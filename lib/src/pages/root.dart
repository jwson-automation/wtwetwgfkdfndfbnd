import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/Login.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/app.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext, AsyncSnapshot<User?> user) {
        if (user.hasData) {
          // 내부 파이어베이스 유저정보 조회 with user.data.uid
          return App();
        } else {
          return Login();
        }
      },
    );
  }
}

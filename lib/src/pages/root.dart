import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/AuthController.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/Login.dart';
import 'package:wtwetwgfkdfndfbnd/app.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/SignupPage.dart';

class Root extends GetView<AuthController> {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext _, AsyncSnapshot<User?> user) {
        if (user.hasData) {
          return FutureBuilder<OUser?>(
              future: controller.loginUser(user.data!.uid),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print('로그인 성공!');
                  return const App();
                } else {
                  return const SignupPage();
                }
                // return const App();
              });
        } else {
          print('로그인 실패!');
          return const Login();
        }
      },
    );
  }
}

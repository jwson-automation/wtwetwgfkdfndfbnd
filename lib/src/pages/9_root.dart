import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/auth_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/7_login.dart';
import 'package:wtwetwgfkdfndfbnd/app.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/8_sign_up_page.dart';

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
                  return Obx(() => controller.user.value.uid != null
                      ? const App() // 일경우에는 '?'
                      : SignupPage(uid: user.data!.uid)); // 아닐경우에는 ':'
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

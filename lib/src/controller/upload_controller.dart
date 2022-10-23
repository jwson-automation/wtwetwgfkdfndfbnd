import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/auth_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/history_user.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class UploadeController extends GetxController {
  static UploadeController get to => Get.find();
  TextEditingController textEditingController = TextEditingController();
  His_user? his_user;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    his_user = His_user.init(AuthController.to.user.value);
    print('uploadPage');
  }

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Future<void> uploadPost(His_user historyinfo) async {
    var now = DateTime.now();
    String Year = DateFormat('yy').format(now);
    String Month = DateFormat('MM').format(now); //format변경
    String Day = DateFormat('dd').format(now);
    // String formatDate = DateFormat('yy/MM/dd - HH:mm:ss').format(now); //format변경
    final User? user = auth.currentUser;
    final uid = user!.uid;
    final docUser = FirebaseFirestore.instance
        // .doc('user')
        .collection('history')
        .doc('$uid')
        .collection('$Year년')
        .doc('$Month월 $Day일');

    final json = {
      'uid': uid,
      'date': now,
      'benchpress': historyinfo.benchpress,
      'deadlift': historyinfo.deadlift,
      'squat': historyinfo.squat,
    };

    await docUser.set(json);
    // print(OUser.fromJson('uid'))

    print('운동기록 업로드');

    // unfocusKeyboard();
    // print(textEditingController.text);
    // uploadFile(filename);
  }
}

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadeController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void uploadPost() {
    unfocusKeyboard();
    print(textEditingController.text);
    uploadFile('null');
  }

  UploadTask uploadFile(String filename) {
    // var f = File(file.path);
    var ref = FirebaseStorage.instance.ref().child('users').child(filename);

    final metadata = SettableMetadata(
      contentType: 'image/jpeg',
      // customMetadata: {'picked-file-path': file.path},
    );

    return ref.putFile(f, metadata);

    //users/{uid}/profile.jpg or profile.png
  }
}

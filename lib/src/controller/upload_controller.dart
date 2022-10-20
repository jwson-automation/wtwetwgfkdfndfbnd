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
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/auth_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/upload_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/history_user.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class Upload extends GetView<UploadeController> {
  Upload({super.key});
  var time = DateTime.now();

  @override
  // TextEditingController idController = TextEditingController();
  TextEditingController benchpressController = TextEditingController();
  TextEditingController squatController = TextEditingController();
  TextEditingController deadliftController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.arrow_back),
              )),
          title: Text(
            '운동 기록 업로드',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                var historyinfo = His_user(
                    benchpress: benchpressController.text,
                    squat: squatController.text,
                    deadlift: deadliftController.text);
                UploadeController.to.uploadPost(historyinfo);
                _showToast(context);
                Get.back(result: 'hello');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.check,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: GestureDetector(
            onTap: () {
              controller.unfocusKeyboard();
            },
            child: Column(
              children: [
                _exercisetime(),
                _squat('스쿼트'),
                _benchfress('벤치프레스'),
                _deadlift('데드리프트')
              ],
            ),
          ),
        ));
  }

  Widget _exercisetime() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Text(
          '$time',
          style: TextStyle(color: Colors.white),
        ));
  }

  Widget _benchfress(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: benchpressController,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(1.0)),
                borderSide: BorderSide(color: Colors.grey, width: 2.0)),
            contentPadding: EdgeInsets.all(10),
            hintStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.black,
            // contentPadding: EdgeInsets.all(10),
            hintText: '$_hinttext'),
      ),
    );
  }

  Widget _squat(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: squatController,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(1.0)),
                borderSide: BorderSide(color: Colors.grey, width: 2.0)),
            contentPadding: EdgeInsets.all(10),
            hintStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.black,
            // contentPadding: EdgeInsets.all(10),
            hintText: '$_hinttext'),
      ),
    );
  }

  Widget _deadlift(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: deadliftController,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(1.0)),
                borderSide: BorderSide(color: Colors.grey, width: 2.0)),
            contentPadding: EdgeInsets.all(10),
            hintStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.black,
            // contentPadding: EdgeInsets.all(10),
            hintText: '$_hinttext'),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('업로드 완료'),
        // action: SnackBarAction(
        //     label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

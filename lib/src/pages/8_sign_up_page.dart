import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/auth_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class SignupPage extends StatefulWidget {
  final String uid;
  const SignupPage({super.key, required this.uid});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

//이건 남녀 토글 버튼에 필요한거
final List<bool> _selections = List.generate(2, (_) => false);

TextEditingController nicknameController = TextEditingController();
TextEditingController descriptionController = TextEditingController();
TextEditingController weightController = TextEditingController();
TextEditingController heightController = TextEditingController();
TextEditingController phonenubmerController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController sexController = TextEditingController();
final ImagePicker _picker = ImagePicker();
XFile? thumbnailXFire;

class _SignupPageState extends State<SignupPage> {
  update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: const Text('회원가입'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _thumbnail(), // 썸네일 사진
              _sex('성별'),
              _nickname('닉네임'),
              _height('키'),
              _weight('몸무게'),
              _email('이메일'),
              _phonenubmer('전화번호'),
              _description('자기소개'),
              Text(
                '사용자약관 [  ]',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '개인정보보호 [  ]',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '마케팅 수신 동의 [  ]',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                //validation을 나중에 해줘야함 ( 닉네임 양식, 설명 글자 갯수,....)
                print(nicknameController.text);
                print(descriptionController.text);
                var signupUser = OUser(
                    uid: widget.uid,
                    nickname: nicknameController.text,
                    weight: weightController.text,
                    height: heightController.text,
                    sex: sexController.text,
                    email: emailController.text,
                    phonenubmer: phonenubmerController.text,
                    description: descriptionController.text);
                AuthController.to.signup(signupUser, thumbnailXFire);
              },
              child: const Text('회원가입'),
            )));
  }

  Widget _thumbnail() {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: thumbnailXFire != null
                ? Image.file(
                    File(thumbnailXFire!.path),
                    fit: BoxFit.cover,
                  )
                : Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () async {
          thumbnailXFire = await _picker.pickImage(
              source: ImageSource.gallery, imageQuality: 10);
          update();
        },
        child: Text('이미지 변경'),
      )
    ]);
  }

  Widget _nickname(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: nicknameController,
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

  Widget _sex(String _hinttext) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: ToggleButtons(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            selectedColor: Colors.black,
            borderColor: Colors.white,
            fillColor: Colors.grey[300],
            children: <Widget>[
              Text(
                '남자',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '여자',
                style: TextStyle(fontSize: 20),
              ),
            ],
            isSelected: _selections,
            onPressed: (int index) {
              setState(() {
                _selections[index] = !_selections[index];
              });
            }));
  }

  Widget _weight(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: weightController,
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

  Widget _height(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: heightController,
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

  Widget _email(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: emailController,
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

  Widget _phonenubmer(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: phonenubmerController,
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

  Widget _description(String _hinttext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: descriptionController,
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
}

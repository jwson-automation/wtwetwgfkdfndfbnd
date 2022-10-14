import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            _avatar(),
            _nickname('닉네임'),
            _nickname('아이디'),
            _nickname('비밀번호'),
            _nickname('이메일'),
            _nickname('주소'),
            _nickname('생년월일'),
            _nickname('3대 몇치냐'),
          ],
        ),
      ),
      //     child: Center(
      //   child: Text('회원가입', style: TextStyle(color: Colors.white)),
      // ));)
    );
  }
}

Widget _nickname(String _text) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
              borderSide: BorderSide(color: Colors.pink, width: 2.0)),
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
          hintText: '$_text'),
    ),
  );
}

Widget _avatar() {
  return Column(children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Icon(
            Icons.person,
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text('이미지 변경'),
    )
  ]);
}

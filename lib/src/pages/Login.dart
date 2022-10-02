import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                      size: 70,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '오운완',
                      style: TextStyle(fontSize: 70, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Daily Exercise Commit',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: signInWithGoogle,
                      child: Icon(
                        Icons.g_mobiledata_outlined,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: signInWithGoogle, child: Icon(Icons.facebook)),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: signInWithGoogle,
                      child: Icon(Icons.sentiment_satisfied_alt)),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.factory_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    '뉴비 앱 공장장',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              )
            ]),
      ),
    );
  }
}

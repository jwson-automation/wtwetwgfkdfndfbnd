import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class UserRepository {
  //데이터 베이스와 통신하는 클래스
  static Future<OUser?> loginUserByUid(String uid) async {
    var data = await FirebaseFirestore.instance
        .collection('users') // 유저스라는 컬렉션(폴더)에서조회함
        .where('uid', isEqualTo: uid)
        // uid가 같으면 조회를 해서 가져오겠다!
        .get();

    if (data.size == 0) {
      //사이즈가 0이면 가입된 유저가 없다.
      return null;
    } else {
      //하지만, 사이즈가 있다면 유저 정보가 있음!
      // print(data.docs.first.data());
      return OUser.fromJson(data.docs.first.data());
    }
    // firebase cloud 문법!
    // firestore 문법입니다.
  }

  static Future<bool> signup(OUser user) async {
    try {
      await FirebaseFirestore.instance.collection('users').add(user.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }
}

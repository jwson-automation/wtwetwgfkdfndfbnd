import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class UserRepository {
  static Future<OUser?> loginUserByUid(String uid) async {
    var data = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: uid)
        .get();

    if (data.size == 0) {
      return null;
    } else {
      // print(data.docs.first.data());
      return OUser.fromJson(data.docs.first.data());
    }
    // firebase cloud 문법!
    // firestore 문법입니다.
  }
}

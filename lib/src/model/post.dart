import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class Post {
  final String? id;
  final String? thumnail;
  final String? description;
  final int? likeCount;
  final OUser? userInfo;
  final String? uid;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deltedAt;

  Post({
    this.id,
    this.thumnail,
    this.description,
    this.likeCount,
    this.userInfo,
    this.uid,
    this.createdAt,
    this.updatedAt,
    this.deltedAt,
  });

  factory Post.fromJson(String docId, Map<String, dynamic> json) {
    return Post(
      id: json['id'] == null ? '' : json['id'] as String,
      thumnail: json['thumnail'] == null ? '' : json['thumnail'] as String,
      description:
          json['description'] == null ? '' : json['description'] as String,
      likeCount: json['likeCount'] == null ? 0 : json['likeCount'] as int,
      userInfo:
          json['userInfo'] == null ? null : OUser.fromJson(json['userInfo']),
      uid: json['uid'] == null ? '' : json['uid'] as String,
      createdAt: json['createdAt'] == null
          ? DateTime.now()
          : json['createdAt'].toDate(),
      updatedAt: json['updatedAt'] == null
          ? DateTime.now()
          : json['updatedAt'].toDate(),
      deltedAt: json['deltedAt'] == null ? null : json['deltedAt'].toDate(),
    );
  }
}

import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class History {
  final String? id;
  final String? benchpress;
  final String? squat;
  final int? deadlift;
  final OUser? userInfo;
  final String? uid;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deltedAt;

  History({
    this.id,
    this.benchpress,
    this.squat,
    this.deadlift,
    this.userInfo,
    this.uid,
    this.createdAt,
    this.updatedAt,
    this.deltedAt,
  });

  factory History.fromJson(String docId, Map<String, dynamic> json) {
    return History(
      id: json['id'] == null ? '' : json['id'] as String,
      benchpress:
          json['benchpress'] == null ? '' : json['benchpress'] as String,
      squat: json['squat'] == null ? '' : json['squat'] as String,
      deadlift: json['deadlift'] == null ? 0 : json['deadlift'] as int,
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

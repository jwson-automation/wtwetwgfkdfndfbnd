import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class His_user {
  final String? id;
  final String? benchpress;
  final String? squat;
  final String? deadlift;
  final OUser? userInfo;
  // final OUser? uid;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deltedAt;

  His_user({
    this.id,
    this.benchpress,
    this.squat,
    this.deadlift,
    this.userInfo,
    // this.uid,
    this.createdAt,
    this.updatedAt,
    this.deltedAt,
  });

  factory His_user.fromJson(Map<String, dynamic> json) {
    return His_user(
      id: json['id'] == null ? '' : json['id'] as String,
      benchpress:
          json['benchpress'] == null ? '' : json['benchpress'] as String,
      squat: json['squat'] == null ? '' : json['squat'] as String,
      deadlift: json['deadlift'] == null ? '' : json['deadlift'] as String,
      userInfo:
          json['userInfo'] == null ? null : OUser.fromJson(json['userInfo']),
      // uid: json['uid'] == null ? null : OUser.fromJson(json['uid']),
      createdAt: json['createdAt'] == null
          ? DateTime.now()
          : json['createdAt'].toDate(),
      updatedAt: json['updatedAt'] == null
          ? DateTime.now()
          : json['updatedAt'].toDate(),
      deltedAt: json['deltedAt'] == null ? null : json['deltedAt'].toDate(),
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'benchpress': benchpress,
      'squat': squat,
      'deadlift': deadlift,
      'userInfo': userInfo,
      // 'uid': uid,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deltedAt': deltedAt,
    };
  }

  His_user copyWith({
    String? id,
    String? benchpress,
    String? squat,
    String? deadlift,
    OUser? userInfo,
    // OUser? uid,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deltedAt,
  }) {
    return His_user(
      //널이 아니면 바꿔주고, 널이면 그대로 쓴다!
      id: id ?? this.id,
      benchpress: benchpress ?? this.benchpress,
      squat: squat ?? this.squat,
      deadlift: deadlift ?? this.deadlift,
      userInfo: userInfo ?? this.userInfo,
      // uid: uid ?? this.uid,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deltedAt: deltedAt ?? this.deltedAt,
    );
  }

  static His_user? init(OUser userInfo) {
    return His_user(
      id: '',
      benchpress: '',
      squat: '',
      deadlift: '',
      userInfo: userInfo,
      // uid: userInfo,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Widget buildUser(His_user his_user) => ListTile(
        leading: CircleAvatar(
          child: Text('${his_user.benchpress}')),
          title: Text(His_user.fromJson('benchfress')),
          
        ),
      );

  // static His_user fromJson(Map<String, dynamic> json) => His_user(
  //     squat: json['squat'],
  //     benchpress: json['benchpress'],
  //     deadlift: json['deadlift']);
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wtwetwgfkdfndfbnd/src/model/ounwan_user.dart';

class His_user {
  final String? uid;
  final String? benchpress;
  final String? squat;
  final String? deadlift;
  final DateTime? date;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  // final String? id;
  // final DateTime? deltedAt;

  His_user({
    this.uid,
    this.benchpress,
    this.squat,
    this.deadlift,
    this.createdAt,
    this.date,
    this.updatedAt,
    // this.id,
    // this.userInfo,
    // this.deltedAt,
  });

  factory His_user.fromJson(Map<String, dynamic> json) {
    return His_user(
      uid: json['uid'] == null ? '' : json['uid'] as String,
      benchpress:
          json['benchpress'] == null ? '' : json['benchpress'] as String,
      squat: json['squat'] == null ? '' : json['squat'] as String,
      deadlift: json['deadlift'] == null ? '' : json['deadlift'] as String,
      createdAt: json['createdAt'] == null
          ? DateTime.now()
          : json['createdAt'].toDate(),
      updatedAt: json['updatedAt'] == null
          ? DateTime.now()
          : json['updatedAt'].toDate(),
      date: json['date'] == null ? DateTime.now() : json['date'].toDate(),
      // id: json['id'] == null ? '' : json['id'] as String,
      // userInfo:
      // json['userInfo'] == null ? null : OUser.fromJson(json['userInfo']),
      // deltedAt: json['deltedAt'] == null ? null : json['deltedAt'].toDate(),
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'benchpress': benchpress,
      'squat': squat,
      'deadlift': deadlift,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'date': date,
      // 'id': id,
      // 'userInfo': userInfo,
      // 'deltedAt': deltedAt,
    };
  }

  His_user copyWith({
    String? uid,
    String? benchpress,
    String? squat,
    String? deadlift,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? date,

    // DateTime? deltedAt,
    // OUser? userInfo,
    // String? id,
  }) {
    return His_user(
      //널이 아니면 바꿔주고, 널이면 그대로 쓴다!
      uid: uid ?? this.uid,
      // id: id ?? this.id,
      benchpress: benchpress ?? this.benchpress,
      squat: squat ?? this.squat,
      deadlift: deadlift ?? this.deadlift,
      // userInfo: userInfo ?? this.userInfo,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      date: date ?? this.date,
      // deltedAt: deltedAt ?? this.deltedAt,
    );
  }

  static His_user? init(OUser userInfo) {
    return His_user(
      uid: '',
      // id: '',
      benchpress: '',
      squat: '',
      deadlift: '',
      date: DateTime.now(),
      // userInfo: userInfo,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}

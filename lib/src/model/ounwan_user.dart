class OUser {
  String? uid;
  String? nickname;
  String? sex;
  String? weight;
  String? height;
  String? email;
  String? phonenubmer;
  String? thumbnail;
  String? description;
  OUser({
    this.uid,
    this.nickname,
    this.sex,
    this.weight,
    this.height,
    this.phonenubmer,
    this.email,
    this.thumbnail,
    this.description,
  });

  factory OUser.fromJson(Map<String, dynamic> json) {
    return OUser(
      uid: json['uid'] == null ? '' : json['uid'] as String,
      nickname: json['nickname'] == null ? '' : json['nickname'] as String,
      sex: json['sex'] == null ? '' : json['sex'] as String,
      weight: json['weight'] == null ? '' : json['weight'] as String,
      height: json['height'] == null ? '' : json['height'] as String,
      phonenubmer:
          json['phonenubmer'] == null ? '' : json['phonenubmer'] as String,
      email: json['email'] == null ? '' : json['email'] as String,
      thumbnail: json['thumbnail'] == null ? '' : json['thumbnail'] as String,
      description:
          json['description'] == null ? '' : json['description'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nickname': nickname,
      'sex': sex,
      'weight': weight,
      'height': height,
      'phonenubmer': phonenubmer,
      'email': email,
      'thumbnail': thumbnail,
      'description': description,
    };
  }

  OUser copyWith({
    String? uid,
    String? nickname,
    String? sex,
    String? weight,
    String? height,
    String? email,
    String? phonenubmer,
    String? thumbnail,
    String? description,
  }) {
    return OUser(
      //널이 아니면 바꿔주고, 널이면 그대로 쓴다!
      uid: uid ?? this.uid,
      nickname: nickname ?? this.nickname,
      sex: sex ?? this.sex,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      email: email ?? this.email,
      phonenubmer: phonenubmer ?? this.phonenubmer,
      thumbnail: thumbnail ?? this.thumbnail,
      description: description ?? this.description,
    );
  }
}

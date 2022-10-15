class OUser {
  String? uid;
  String? nickname;
  String? thumbnail;
  String? description;
  OUser({
    this.uid,
    this.nickname,
    this.thumbnail,
    this.description,
  });

  factory OUser.fromJson(Map<String, dynamic> json) {
    return OUser(
      uid: json['uid'] == null ? '' : json['uid'] as String,
      nickname: json['nickname'] == null ? '' : json['nickname'] as String,
      thumbnail: json['thumbnail'] == null ? '' : json['thumbnail'] as String,
      description:
          json['description'] == null ? '' : json['description'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nickname': nickname,
      'thumbnail': thumbnail,
      'description': description,
    };
  }

  OUser copyWith({
    String? uid,
    String? nickname,
    String? thumbnail,
    String? description,
  }) {
    return OUser(
      //널이 아니면 바꿔주고, 널이면 그대로 쓴다!
      uid: uid ?? this.uid,
      nickname: nickname ?? this.nickname,
      thumbnail: thumbnail ?? this.thumbnail,
      description: description ?? this.description,
    );
  }
}

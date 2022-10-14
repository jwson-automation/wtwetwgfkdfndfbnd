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
}

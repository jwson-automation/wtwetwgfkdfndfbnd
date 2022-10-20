import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum AvatarType { TYPE1, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  bool? hasStory;
  String thumbPath;
  String? nickname;
  AvatarType type;
  double? size;

  AvatarWidget({
    Key? key,
    required this.type,
    required this.thumbPath,
    this.hasStory,
    this.nickname,
    this.size = 65,
  }) : super(key: key);

  Widget type3Widget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: Colors.black,
            ),

            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size!),
                child: SizedBox(
                  width: size,
                  height: size,
                  child: CachedNetworkImage(
                    imageUrl: thumbPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          nickname ?? '',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return type3Widget();
  }
}

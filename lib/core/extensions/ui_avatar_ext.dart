import 'package:flutter/material.dart';

extension AvatarExtension on String {
  Image getAvatar({
    int size = 45,
    bool rounded = true,
    bool bold = false,
    Color color = const Color(0xff000000),
    Color background = const Color(0xfff0e9e9),
  }) {
    String name = Uri.encodeComponent(this);

    return Image.network(
        "https://ui-avatars.com/api/?name=$name&rounded=1&background=2C82B5&color=ffffff&size=$size");
  }
}

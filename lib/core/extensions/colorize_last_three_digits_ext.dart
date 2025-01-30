import 'package:flutter/material.dart';

extension ColorizeLastThreeDigits on String {
  TextSpan toBlueLastThreeDigits() {
    // Check if the string has at least 3 characters
    if (length < 3) {
      return TextSpan(text: this);
    }
    // Split the string into the part before the last 3 characters and the last 3 characters
    final String firstPart = substring(0, length - 3);
    final String lastThreeDigits = substring(length - 3);

    // Return a TextSpan with different styles for each part
    return TextSpan(
      children: [
        TextSpan(
            text: firstPart,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        TextSpan(
            text: lastThreeDigits,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}

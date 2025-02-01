import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core.dart';

extension CopyToClipboard on BuildContext {
  Future<void> copyToClipboardAndShowSnackBar(String text,
      {Duration duration = const Duration(seconds: 2)}) async {
    await Clipboard.setData(ClipboardData(text: text));
    showSnackBar(
      'Telah disalin ke clipboard',
      duration: duration,
      status: 'info',
    );
  }
}

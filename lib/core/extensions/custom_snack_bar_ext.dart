import 'package:flutter/material.dart';

import '../core.dart';

extension ShowSnackBar on BuildContext {
  void showSnackBar(String message,
      {Duration duration = const Duration(seconds: 3),
      String status = 'info'}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppThemeTexts.textTheme.labelLarge,
        ),
        duration: duration,
        backgroundColor: status == 'error'
            ? AppThemeColors.failure
            : status == 'success'
                ? AppThemeColors.success
                : status == 'warning'
                    ? AppThemeColors.warning
                    : status == 'info'
                        ? AppThemeColors.info
                        : AppThemeColors.primary,
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
      ),
    );
  }
}

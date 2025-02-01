import 'package:flutter/material.dart';

class AppThemeTexts {
  AppThemeTexts._(); // Constructor privat untuk mencegah instantiasi

  /// [TextTheme] yang sesuai dengan Material Design 3 (M3).
  static const TextTheme textTheme = TextTheme(
    // ------------------------- Display Text -------------------------
    /// Digunakan untuk teks besar seperti splash screen atau hero section.
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12, // 57 * 1.12 ≈ 64px line height
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.16, // 45 * 1.16 ≈ 52px
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22, // 36 * 1.22 ≈ 44px
    ),

    // ------------------------- Headline Text -------------------------
    /// Digunakan untuk judul utama (contoh: judul halaman).
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 0,
      height: 1.25, // 32 * 1.25 = 40px
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.25, // 28 * 1.25 = 35px
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.33, // 24 * 1.33 ≈ 32px
    ),

    // -------------------------- Title Text ---------------------------
    /// Digunakan untuk subjudul atau judul komponen (contoh: judul card).
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.27, // 22 * 1.27 ≈ 28px
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500, // Medium weight untuk kontras
      letterSpacing: 0.15,
      height: 1.5, // 16 * 1.5 = 24px
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43, // 14 * 1.43 ≈ 20px
    ),

    // -------------------------- Body Text ---------------------------
    /// Digunakan untuk konten utama (paragraf, deskripsi).
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.5, // 16 * 1.5 = 24px
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43, // 14 * 1.43 ≈ 20px
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33, // 12 * 1.33 ≈ 16px
    ),

    // -------------------------- Label Text --------------------------
    /// Digunakan untuk teks kecil seperti label button atau caption.
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
    ),
    labelSmall: TextStyle(
      fontSize: 12, // Diubah dari 11 ke 12 untuk keterbacaan
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1, // Diubah dari 0.5 ke 0.1 (sesuai M3)
      height: 1.45,
    ),
  );
}

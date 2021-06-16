import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// Convenience class to access application colors.
abstract class AppColors {
  /// Dark background color.
  static const Color backgroundColor = Color(0xFF191D1F);

  /// Slightly lighter version of [backgroundColor].
  static const Color backgroundFadedColor = Color(0xFF191B1C);

  /// Color used for cards and surfaces.
  static const Color cardColor = Color(0xFF1F2426);

  /// Accent color used in the application.Color(0xFFef8354);
  static const Color accentColor = Colors.blue;
  static const Color whiteColor = Colors.white10;
}

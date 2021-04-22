import 'package:flutter/material.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class TextStyles {
  static TextStyle headingH4() {
    return const TextStyle(
      color: Kolors.primaryBodyColor,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );
  }

  static TextStyle headingH3() {
    return const TextStyle(
      color: Kolors.primaryBodyColor,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    );
  }

  static TextStyle paragraphP4() {
    return const TextStyle(
      color: Kolors.primaryBodyColor,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }

  static TextStyle headingH7() {
    return const TextStyle(
      color: Kolors.primaryBodyColor,
      fontWeight: FontWeight.w500,
      fontSize: 11,
    );
  }

  static TextStyle bottomLabel() {
    return const TextStyle(
      color: Kolors.primaryBodyColor,
      fontWeight: FontWeight.w500,
      fontSize: 10,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class Styles {
  static InputDecoration inputDecoration(
      BuildContext context, String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Kolors.lightGreyColor,
        fontSize: 18,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Kolors.veryLightGrey,
          width: 0.8,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide(
          color: Kolors.veryLightGrey.withOpacity(0.6),
          width: 0.8,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.red[300]),
      ),
    );
  }
}

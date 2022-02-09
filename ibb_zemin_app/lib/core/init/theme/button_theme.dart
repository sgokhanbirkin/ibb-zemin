import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/extension/context_extension.dart';

class CustomButtonStyle {
  static CustomButtonStyle? _instance;
  static CustomButtonStyle? get instance =>
      _instance ?? CustomButtonStyle._init();
  CustomButtonStyle._init();
  final ButtonStyle defaultElevatedButton = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.blue[700],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}

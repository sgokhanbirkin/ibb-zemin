import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({Key? key, required this.label, required this.style})
      : super(key: key);
  String label;
  TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: style,
    );
  }
}

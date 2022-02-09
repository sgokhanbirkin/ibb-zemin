import 'package:flutter/material.dart';

class ArrowCardWidget extends StatelessWidget {
  ArrowCardWidget({
    Key? key,
    required this.size,
    required this.bgColor,
    required this.ratio,
    this.circularRatio = 5.0,
  }) : super(key: key);
  Size size;
  Color bgColor;
  double ratio;
  double? circularRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: size.width / ratio,
            width: size.width / ratio,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(circularRatio!),
            ),
            child: Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: size.width / ratio,
            ),
          ),
        ),
      ),
    );
  }
}

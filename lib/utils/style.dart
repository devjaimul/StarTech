import 'package:flutter/material.dart';

class HeadingTwo extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const HeadingTwo({super.key, required this.data, this.color, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 20 ,
        fontWeight: fontWeight ?? FontWeight.w600 ,
      ),
    );
  }
}

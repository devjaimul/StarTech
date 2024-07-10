import 'package:flutter/material.dart';
import 'package:startech/utils/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;

  const CustomButton({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff1305B0),
          width: 4,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Center(
          child: HeadingTwo(
        data: text,
        color:color ?? const Color(0xff1305B0),
      )),
    );
  }
}

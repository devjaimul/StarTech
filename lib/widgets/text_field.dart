import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomTextField({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            suffixIcon: Icon(icon,color: Colors.black.withOpacity(0.5),)
        ),
      ),
    );
  }
}

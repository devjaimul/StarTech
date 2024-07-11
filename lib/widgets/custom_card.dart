import 'package:flutter/material.dart';
import 'package:startech/utils/style.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.deepOrange,
          child: Icon(icon, color: Colors.white,),
        ),
        title: HeadingTwo(data: title, fontSize: 14,),
      ),
    );
  }
}
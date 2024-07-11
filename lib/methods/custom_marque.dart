
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

Widget customMarque() {
  return Container(
    height: 40,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ]
    ),
    child: Marquee(
      text: '12th July Friday, all our outlets are open except Chattogram Agra bad, Khulna, Rangpur & Rajshahi outlets.'
          ' Additionally, our online activities are open and operational.',
      style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6)),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 20.0,
      velocity: 100.0,
      pauseAfterRound: const Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: const Duration(milliseconds: 500),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}
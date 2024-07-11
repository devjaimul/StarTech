import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

CarouselSlider customCarouselSlider(List<String> sliders) {

  return CarouselSlider.builder(
      itemCount: sliders.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.appBarColors,
            image:
            DecorationImage(image: NetworkImage(sliders[index]),fit: BoxFit.cover),
          ),
        );
      },
      options: CarouselOptions(
        height: 160,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ));
}
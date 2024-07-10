import 'package:flutter/material.dart';

import 'package:startech/widgets/appbar.dart';
import 'package:startech/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sliders = [
      'https://www.startech.com.bd/image/cache/catalog/home/banner/eid-mobile-fest.ai-banner-982x500.webp',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/MSI-Back-to-School--Offer-982x500.webp',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/ZTE%20Blade%20V40%20Smartphone-982x500.webp',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/Stealth-16-Studio-A13VG-407BD-web-banner-982x500.webp',
    ];
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            customCarouselSlider(sliders),
          ],
        ),
      ),
    );
  }
}

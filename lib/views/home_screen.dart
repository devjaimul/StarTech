import 'package:flutter/material.dart';
import 'package:startech/utils/colors.dart';
import 'package:startech/utils/style.dart';

import 'package:startech/widgets/appbar.dart';
import 'package:startech/widgets/custom_button.dart';
import 'package:startech/widgets/slider.dart';
import 'package:startech/widgets/text_field.dart';

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
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              decoration: BoxDecoration(
                color: AppColors.secondaryColors,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  HeadingTwo(data: 'Compare'),
                  SizedBox(height: 15,),
                  CustomTextField(text: 'Search and Select products', icon: Icons.search),
                  SizedBox(height: 15,),
                  CustomTextField(text: 'Search and Select products', icon: Icons.search),
                  SizedBox(height: 15,),
                  CustomButton(text: 'View Comparison',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

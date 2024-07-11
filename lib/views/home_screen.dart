import 'package:flutter/material.dart';
import 'package:startech/utils/colors.dart';
import 'package:startech/utils/style.dart';

import 'package:startech/methods/appbar.dart';
import 'package:startech/widgets/categories.dart';
import 'package:startech/widgets/custom_button.dart';
import 'package:startech/widgets/custom_card.dart';
import 'package:startech/methods/custom_marque.dart';
import 'package:startech/methods/slider.dart';
import 'package:startech/widgets/products.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              customCarouselSlider(sliders),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColors,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  children: [
                    HeadingTwo(data: 'Compare'),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        text: 'Search and Select products', icon: Icons.search),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        text: 'Search and Select products', icon: Icons.search),
                    SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      text: 'View Comparison',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const Image(
                  image: NetworkImage(
                    'https://www.startech.com.bd/image/catalog/ads/sunbscriobe-to-star-tech-youtube-channel.webp',
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Expanded(
                    child:
                        CustomCard(title: 'Laptop Finder', icon: Icons.laptop),
                  ),
                  Expanded(
                    child: CustomCard(
                        title: 'Raise A Complain', icon: Icons.info_rounded),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Expanded(
                    child: CustomCard(
                        title: 'Online Support', icon: Icons.help_outlined),
                  ),
                  Expanded(
                    child: CustomCard(
                        title: 'Service Center', icon: Icons.settings),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
             customMarque(),
              const SizedBox(height: 15,),
              const HeadingTwo(data: 'Featured Category',fontSize: 18,),
              HeadingTwo(data: 'Get Your Desired Product from Featured Category!',
                fontSize: 14,color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.normal,),
              const SizedBox(height: 15,),
              const Categories(),
              const SizedBox(height: 15,),
              const HeadingTwo(data: 'Featured Products',fontSize: 18,),
              HeadingTwo(data: 'Check & Get Your Desired Product!',
                fontSize: 14,color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.normal,),
              const SizedBox(height: 15,),
              Products(),
            ],
          ),
        ),
      ),
    );
  }


}

import 'package:flutter/material.dart';

import '../utils/colors.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: AppColors.appBarColors,
    centerTitle: true,
    title: Image.network(
      'https://www.startech.com.bd/image/catalog/logo.png',
      width: 100,
    ),
    leading: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    actions:  [
      IconButton(onPressed: (){}, icon: const Icon(
        Icons.search,
        color: Colors.white,
      ),),

      IconButton(onPressed: (){}, icon: const Icon(
        Icons.card_travel_outlined,
        color: Colors.white,
      ),),
    ],
  );
}
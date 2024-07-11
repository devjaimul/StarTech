import 'package:flutter/material.dart';
import 'package:startech/utils/style.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items=[
      {
        'name':'Ac',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/ac-48x48.png',
      },
      {
        'name':'Drone',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/drone-48x48.png',
      },
      {
        'name':'Gimbal',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/gimbal-48x48.png',
      },
      {
        'name':'Laptop',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/laptop-48x48.png',
      },
      {
        'name':'Tv',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/tv-48x48.png',
      },
      {
        'name':'Phone',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/mobile-phone-48x48.png',
      },
      {
        'name':'Watch',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/smart-watch-48x48.png',
      },
      {
        'name':'Earbuds',
        'icon':'https://www.startech.com.bd/image/cache/catalog/category-thumb/earbuds-48x48.png',
      },
    ];
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {

        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(10),
             border: Border.all(
               color: Colors.black.withOpacity(0.1),
             ),
             boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 blurRadius: 3,
                 spreadRadius: 0.2,
               )
             ]
           ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: NetworkImage(items[index]['icon']),width: 40,),
                  const SizedBox(height: 5,),
                  HeadingTwo(data: items[index]['name'],fontSize: 16,),
                ],
              ),
            ),
          ),
        );
    },);
  }
}

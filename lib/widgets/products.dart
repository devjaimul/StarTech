
import 'package:flutter/material.dart';
import 'package:startech/utils/style.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items=[
      {
        'title':'OnePlus Nord N30 SE 5G Smartphone (4/128GB)',
        'image':'https://www.startech.com.bd/image/cache/catalog/mobile/oneplus/nord-n30-se/nord-n30-se-01-200x200.png',
        'price':'15,999৳',
        'discount':'',
        'save':'499৳ Discount on Checkout',
      },
      {
        'title':'MSI PRO MP251 24.5" 100Hz FHD Monitor',
        'image':'https://www.startech.com.bd/image/cache/catalog/monitor/msi/mp251/pro-mp251-01-200x200.webp',
        'price':'17,800৳',
        'discount':'18,500৳',
        'save':'Save: 700৳',
      },
      {
        'title':'MSI G255F 25" 180Hz 1ms IPS FHD Gaming Monitor',
        'image':'https://www.startech.com.bd/image/cache/catalog/monitor/msi/g255f/g255f-01-200x200.webp',
        'price':'25,900৳',
        'discount':'27,500৳',
        'save':'Save: 1,600৳',
      },
      {
        'title':'MSI G32CQ5P 31.5 inch VA 170Hz Curved Monitor',
        'image':'https://www.startech.com.bd/image/cache/catalog/monitor/msi/g32cq5p/g32cq5p-001-200x200.webp',
        'price':'42,500৳',
        'discount':'43,900৳',
        'save':'Save: 1,400৳',
      },
      {
        'title':'Intel Core i3-12100 12th Gen Budget Desktop PC',
        'image':'https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/intel-core-i3-12100-12th-gen-budget-desktop-pc-02-200x200.webp',
        'price':'26,700৳',
        'discount':'30,000৳',
        'save':'Save: 3,300৳',
      },
      {
        'title':'Lenovo IdeaPad Slim 3 Ryzen 5 7520U 15.6" FHD Laptop ',
        'image':'https://www.startech.com.bd/image/cache/catalog/laptop/lenovo/ideapad-slim-3-15amn8/ideapad-slim-3-15amn8-08-200x200.webp',
        'price':'66,500৳',
        'discount':'68,500৳',
        'save':'Save: 2,000৳',
      },
      {
        'title':'MSI Stealth 16 Studio A13VG-407BD ',
        'image':'https://www.startech.com.bd/image/cache/catalog/laptop/msi/stealth-16-studio-a13vg-407bd/stealth-16-studio-a13vg-407bd-pure-white-01-200x200.webp',
        'price':'299,000৳',
        'discount':'',
        'save':'Earn Point: 500',
      },
      {
        'title':'Samsung 43CU7700 43" Crystal 4K UHD Smart TV',
        'image':'https://www.startech.com.bd/image/cache/catalog/television/samsung/43cu7700/43cu7700-01-200x200.webp',
        'price':'43,128৳ ',
        'discount':'59,900৳',
        'save':'Save: 16,772৳',
      },

    ];
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.6,
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
              child: Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 25,left: 10,right: 10,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image(image: NetworkImage(items[index]['image']),width: 150,)),
                        Divider(color: Colors.black.withOpacity(0.1),),
                        HeadingTwo(data: items[index]['title'],fontSize: 16,),
                        const SizedBox(height: 10,),
                       Row(
                         children: [
                           HeadingTwo(data: items[index]['price'],fontSize: 15,color: Colors.red,),
                           const SizedBox(width: 10,),
                           Text(items[index]['discount'],style: TextStyle(
                               color: Colors.black.withOpacity(0.5),
                               fontSize: 13,
                               decoration: TextDecoration.lineThrough
                           ),)
                         ],
                       )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Positioned(
                    top: 10,
                    child: Container(
                        padding: const EdgeInsets.all(5),

                        decoration: const BoxDecoration(
                          color: Color(0xff6E2594),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: HeadingTwo(data: items[index]['save'],color: Colors.white,fontSize: 12,fontWeight: FontWeight.normal,)
                    ),
                  ),

                ],
              ),
            ),
          ),
        );
    },);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trendify/Screens/Home/ImageSlider/imageSlider.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/common/widgets/products/productCard.dart';
import 'package:trendify/common/widgets/products/product_model.dart';

import '../../common/widgets/categories/categories.dart';
import '../../common/widgets/categories/categoryModel.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCategories =[all, shoes, electronics, mensFashion, womensFashion, beauty];

    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: home_AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// -----searchBar-------
              searchBar(),
              SizedBox(height: 20,),

              ///------slider------
              Imageslider(
                  currentSlide: currentSlider, onChange: (value){
                setState(() {
                  currentSlider = value;
                });
              },

                ///--------- Image File path-----------
              imagePaths: [
                'assets/images/slider.jpg',
                'assets/images/slider2.png',
                'assets/images/slider3.png',
              ],
              ),
              SizedBox(height: 12),

              Text('Categories', style: headLines()),
              SizedBox(height: 10),


              ///-----categories section----------
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedIndex = index;
                        });
                      },

                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index ? Colors.blue: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(categories[index].image),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Text(categories[index].title, style: textStyle13(),)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),


              ///-----Popular Products--------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Products', style: headLines()),
                  Text('See All', style: textStyle2(),)
                ],
              ),
              SizedBox(height: 15),

              ///-----Products List------------
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20
                  ),
                itemCount: selectedCategories[selectedIndex].length,
                itemBuilder: (context, index){
                    return Productcard(
                        product: selectedCategories[selectedIndex][index],
                    );
                }
              )

          ]
          ),
        ),
      ),
    );
  }

  AppBar home_AppBar() {
    return AppBar(
      backgroundColor: CupertinoColors.white,
      actions: [
        IconButton(
          style: IconButton.styleFrom(backgroundColor: kcontentColor),
          onPressed: (){},
          icon: Icon(Icons.notifications_none,color: Colors.grey.shade700)
        )
      ],
    );
  }

  Container searchBar() {
    return Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all()
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Icon(CupertinoIcons.search, color: Colors.grey, size: 20,),
                SizedBox(width: 10,),
                Flexible(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  width: 1.5,
                ),
                IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.tune, color: Colors.grey,),
                  ),
              ],
            )

          );
  }
}


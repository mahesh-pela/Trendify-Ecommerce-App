import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Screens/Home/homeScreen.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/nav_var_screen.dart';

import 'favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    final finalList = provider.favourite;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: favouriteAppBar(context),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context, index) {
                    final favouriteItems = finalList[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),

                          ///------------------Outer Container-----------------
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: CupertinoColors.white,
                                borderRadius: BorderRadius.circular(20)),

                            padding: const EdgeInsets.all(10),

                            ///---------Items inside the Container---------------
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: kcontentColor),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                      favouriteItems.image),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),

                                ///-------------Title,category and price--------
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(favouriteItems.title, style: textStyle16()),
                                    Text(
                                      favouriteItems.category,
                                      style: grey_textStyle(),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '\$${favouriteItems.price}',
                                      style: textStyle2(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                            top: 40,
                            right: 30,
                            child: IconButton(
                              onPressed: (){
                                finalList.removeAt(index);
                                setState(() {
                                });
                              },
                              icon: Icon(Icons.delete,
                                color: Colors.red,),
                            )
                        )

                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Row favouriteAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NavigationMenu()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        Text(
          'Favourite',
          style: textStyle21(),
        ),
        Container()
      ],
    );
  }
}

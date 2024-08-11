import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Screens/Home/homeScreen.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/nav_var_screen.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  final provider = FavouriteProvider.of(context);
  final finalList = provider.favourite;

  @override
  Widget build(BuildContext context) {
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
                    itemBuilder: itemBuilder
                ),
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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationMenu()));
              },
              icon: Icon(Icons.arrow_back_ios, size: 20,)
          ),
          Text('Favourite', style: textStyle21(),),
          Container()
        ],
    );
  }
}

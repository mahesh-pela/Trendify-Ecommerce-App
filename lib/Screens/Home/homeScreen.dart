import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trendify/Screens/Home/imageSlider.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        title: Text('Ecommerce App'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBar(),
              SizedBox(height: 20,),
              Imageslider(),
              SizedBox(height: 12),
              Text('Categories', style: headLines()),
            ],
          ),
        ),
      ),
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

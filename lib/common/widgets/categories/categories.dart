import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/textThemeStyles.dart';
import 'categoryModel.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

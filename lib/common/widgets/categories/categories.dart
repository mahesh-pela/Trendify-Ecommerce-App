import 'package:flutter/cupertino.dart';

import '../../styles/textThemeStyles.dart';
import 'categoryModel.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
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
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20,),
      ),
    );
  }
}

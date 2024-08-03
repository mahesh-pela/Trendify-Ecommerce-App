import 'package:flutter/cupertino.dart';

import '../styles/textThemeStyles.dart';

class categories extends StatelessWidget {
  const categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: ClipOval(
                        child: Image.asset('assets/images/categories/shoes.jpg', fit: BoxFit.cover,),
                      )
                  ),
                  SizedBox(height: 5,),
                  Text('Shoes', style: textStyle2(),)
                ],
              ),
            );
          },
        )
    );
  }
}
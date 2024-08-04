import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailAppbar extends StatelessWidget {
  const DetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            IconButton(
            style:IconButton.styleFrom(
              backgroundColor: CupertinoColors.white
            ),
            onPressed: () {
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back_ios)),
            Spacer(),
            IconButton(style: IconButton.styleFrom(backgroundColor: CupertinoColors.white), onPressed: (){}, icon: Icon(Icons.share)),
            IconButton(style: IconButton.styleFrom(backgroundColor: CupertinoColors.white), onPressed: (){}, icon: Icon(Icons.favorite_outlined))
        ]
    ,
    )
    ,
    );
  }
}

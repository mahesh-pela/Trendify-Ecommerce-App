import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Text('Profile', style: textStyle21(),)
          ],
        ),
      ),
    );
  }
}

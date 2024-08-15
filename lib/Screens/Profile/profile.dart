import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children:[

              ///--------- Top section---------
              Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Profile', style: textStyle25(),),
                    SizedBox(height:10,),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.orangeAccent.shade100,
                      child: CircleAvatar(
                        radius: 52,
                        backgroundImage: AssetImage('assets/images/categories/profile/mahesh.jpeg'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Mahesh Pela', style: textStyle18(),)
                  ],
                ),
              ),

              ///-----------logout section------------
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info_rounded),
                    SizedBox(width: 20,),
                    Text('Personal Information', style: textStyle18(),),
                    SizedBox(width: 80,),
                    Transform.rotate(
                      angle: 3.14,
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey.shade500,)
                    )
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

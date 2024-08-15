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
              ///----Personal INformation-------
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.info_rounded),
                    SizedBox(width: 20,),
                    Expanded(child: Text('Personal Information', style: textStyle18(),)),
                    Transform.rotate(
                      angle: 3.14,
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey.shade500,)
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              ///------------Shipping Address----------
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.location_solid),
                    SizedBox(width: 20,),
                    Expanded(child: Text('Shipping Address', style: textStyle18(),)),
                    Transform.rotate(
                      angle: 3.14,
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey.shade500,)
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              ///----------Order History-------------
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.time_solid),
                    SizedBox(width: 20,),
                    Expanded(
                        child: Text('Order History', style: textStyle18(),)
                    ),
                    Transform.rotate(
                      angle: 3.14,
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey.shade500,)
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              ///---------Privacy Policy----------
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.privacy_tip),
                    SizedBox(width: 20,),
                    Expanded(child: Text('Privacy Policy', style: textStyle18(),)),
                    Transform.rotate(
                      angle: 3.14,
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey.shade500,)
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              ///----------Logout---------
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.login),
                    SizedBox(width: 20,),
                    Expanded(child: Text('Logout', style: textStyle18(),)),
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

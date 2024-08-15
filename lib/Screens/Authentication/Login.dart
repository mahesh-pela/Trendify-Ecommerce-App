import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Screens/SignUP.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/common/widgets/buttonWidget.dart';

import '../common/widgets/socialMedia_buttons.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 140),
              Text('Welcome Back', style: textStyle1(),),
              SizedBox(height: 5,),
              Text('Discover Limitless Choices and Unmatched Convenience.', style: textStyle2(),),
              SizedBox(height: 25,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black54),
                  prefixIcon: Icon(Icons.email, color: Colors.grey.shade700,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
              ),
              SizedBox(height: 15,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.grey.shade700,),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey.shade700),
                    onPressed: (){

                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),

              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.check_box_rounded, color: CupertinoColors.activeBlue,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Remember Me', style: textStyle2()),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Text('Forget Password?', style: textStyleforgetPass()),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: (){

                    }, child: Text('Sign In', style: textStyleWhite()),
                style: elevatedButtonStyle(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Signup()));
                },child: Text('Create Account', style: textStyle3(),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 1,
                        color: Colors.grey.shade400
                      )
                    )
                  ),

                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text('Or Sign In With', style: TextStyle(fontSize: 13, color: Colors.grey.shade500, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 30),
              socialMedia_buttons()
            ],

          ),
        ),
      ),
    );
  }
}



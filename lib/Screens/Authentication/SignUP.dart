import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/common/widgets/buttonWidget.dart';
import 'package:trendify/common/widgets/socialMedia_buttons.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<void> signUP() async{
    try{
      String txtEmail = emailController.text;
      String txtPass = passController.text;

      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: txtEmail, password: txtPass);
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The password provided is too weak.')));
      }
      else if(e.code == 'email-already-in-use'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The account already exists for that email.')));
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's create your account", style: textStyle1(),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //firstname
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          prefixIcon: Icon(Iconsax.user, color: Colors.grey.shade700,size: 20,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                  ),
                  //last name
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          prefixIcon: Icon(Iconsax.user, color: Colors.grey.shade700,size: 20,),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              //username
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(Iconsax.user_edit, size: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //email
              Container(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email, color: Colors.grey.shade700,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //phone number
              Container(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    prefixIcon: Icon(Iconsax.call, size: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //password
              Container(
                child: TextField(
                  obscureText: true,
                  controller: passController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Iconsax.password_check, size: 20,),
                    suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey.shade700,),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                      }, icon: Icon(Icons.check_box_rounded, color: CupertinoColors.activeBlue,)),
                  RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'I agree to '),
                          TextSpan(text: 'Privacy Policy ', style: TextStyle(color: CupertinoColors.activeBlue)),
                          TextSpan(text: 'and '),
                          TextSpan(text: 'Terms of use', style: TextStyle(color: CupertinoColors.activeBlue))
                        ]
                      ))
                ],
              ),
              SizedBox(height: 10,),
              //button
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: (){

                    }, child: Text('Create Account', style: textStyleWhite(),),
                style: elevatedButtonStyle(),
                ),
              ),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.center,
                  child: Text('Or Sign Up With',  style: TextStyle(fontSize: 13, color: Colors.grey.shade500, fontWeight: FontWeight.w500))
              ),
              SizedBox(height: 20,),
              socialMedia_buttons()
            ],

          ),
        ),
      ),
    );
  }
}

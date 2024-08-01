import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class socialMedia_buttons extends StatelessWidget {
  const socialMedia_buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 2,
                  color: Colors.grey.shade200
              )
          ),
          child: IconButton(
            icon: Image.asset('assets/images/google logo.png'),
            onPressed: (){

            },
          ),
        ),
        SizedBox(width: 20,),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 2,
                  color: Colors.grey.shade200
              )
            // borderRadius: BorderRadius.circular(12)
          ),
          child: IconButton(
            icon: Image.asset('assets/images/facebook logo.png'),
            onPressed: (){

            },
          ),
        )
      ],
    );
  }
}
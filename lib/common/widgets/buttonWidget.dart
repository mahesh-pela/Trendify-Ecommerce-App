import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ButtonStyle elevatedButtonStyle(){
  return ElevatedButton.styleFrom(
      backgroundColor: CupertinoColors.activeBlue,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
      )
  );
}
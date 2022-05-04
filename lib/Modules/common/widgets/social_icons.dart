import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SocialIcons({
  required String img
})
{
  return GestureDetector(
    child: Image.asset(img,
    height: 22,),
  );
}
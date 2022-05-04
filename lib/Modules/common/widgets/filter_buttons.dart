import 'package:assignment1flutter/shared/assets/png/png.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

Widget smallFilterButton(
    {required String text,
    required Color backgroundColor,
    required Color color,
    required void Function() onClick}) {
  return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(
                color: color,
                fontSize: 12,
                fontWeight: FontWeight.w100,
                fontFamily: 'Josefin_Sans')),
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.only(left: 18, right: 18),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: backgroundColor),
      ));
}

Widget bigFilterButton(
    {required String text,
    required Color color,
    required String icon,
    required void Function() onClick}) {
  return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        child:
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Image.asset(icon) ,
            )
           ,
            Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w100,
                fontFamily: 'Josefin_Sans')),
          ],
        ) ,

        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.only(left: 16, right: 16,top: 5,bottom: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: dark4,
            border: Border.all(color: color)
            ),
          
      ));
}

import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

Widget eventButton(
    {required String text,
    required Color color,
    required String icon,
    double? width,
    void Function()? onClick}) {
  return GestureDetector(
      onTap: onClick,
      child:
       Container(
        alignment: Alignment.center,
        width:width,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Image.asset(icon,
              height: 15,),
            ),
            Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w100,
                fontFamily: 'Josefin_Sans')),
          ],
        ) ,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            color: dark4,
            ),
          
      ));
}
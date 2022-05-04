import 'package:assignment1flutter/Modules/common/widgets/app_bar_button.dart';
import 'package:assignment1flutter/Modules/common/widgets/event_button.dart';
import 'package:assignment1flutter/Modules/common/widgets/social_icons.dart';
import 'package:assignment1flutter/Modules/data/data.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DateEventGameCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
   DateEventGameCard({required this.img, required this.buttons});

  final String img;
  dynamic buttons;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: dark2),
      child: ListView(
        shrinkWrap: true,
        children: [
          Image.asset(
            img,
            fit: BoxFit.fitWidth,
            height: 150,
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Text('FarCry 6',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Josefin_Sans')),
              ),
              Container(
                padding: const EdgeInsets.only(right: 5),
                child: AppBarButton(
                    buttonIcon: Icons.favorite_border_outlined,
                    indicatorStatus: false,
                    buttonAction: () {
                      print('go to search page');
                    }),
              )
            ],
          )),
          Center(
            child: Wrap(
            direction: Axis.horizontal,
            runSpacing: 8,
            spacing: 8,
            children: [
              for (var i in buttons) 
              eventButton(
                text: i['name'],
                icon: i['icon'],
                color: dark3,
                width: i['width']
              )
            ],
          ) ,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 15),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
               Text('Download',style: TextStyle(color: dark3,fontFamily: 'Josefin_Sans',fontSize: 12),),
              for (var i in socialButtons)
                SocialIcons(img:i)
            ],
          ),
          )
          

        ],
      ),
    );
  }
}

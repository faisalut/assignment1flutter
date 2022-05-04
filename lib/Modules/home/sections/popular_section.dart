import 'package:assignment1flutter/Modules/common/widgets/poluar_game_card.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 280,
  margin: const EdgeInsets.only(bottom: 15),
  width:MediaQuery.of(context).size.width,
  child: Column(children: [
    Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(
        left: 30,bottom: 10,top: 20
      ),
      child:  Text('Popular',style:TextStyle(color: secondaryColor,fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Josefin_Sans')),
    ),
     Expanded(
    child: ListView(
      padding:const EdgeInsets.only(left: 20),
    scrollDirection: Axis.horizontal,
    children: const <Widget>[
      PopularGameCard(),
      PopularGameCard(),
      PopularGameCard(),
      
    ],
  )
  ),
  ],)
);
  }
}

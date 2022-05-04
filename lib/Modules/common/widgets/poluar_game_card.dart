import 'package:assignment1flutter/Modules/common/widgets/app_bar_button.dart';
import 'package:assignment1flutter/shared/assets/png/png.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PopularGameCard extends StatelessWidget {
  const PopularGameCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282,
      clipBehavior: Clip.none,
      width: 250,
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: dark2),
      child: ListView(
        children: [
          Image.asset(popularImg1),
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
          ))
        ],
      ),
    );
  }
}

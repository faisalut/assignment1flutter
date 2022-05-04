import 'package:assignment1flutter/Modules/common/widgets/app_bar_button.dart';
import 'package:assignment1flutter/shared/assets/png/png.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: primaryColor,
      leading: Container(
          padding: const EdgeInsets.only(left: 15, bottom: 12, top: 10),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: secondaryColor,
            child: CircleAvatar(
              backgroundImage: AssetImage(profileImg),
              radius: 14,
            ),
          )),
      title: const Text(
        'John',
        style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Josefin_Sans'),
      ),
      actions: [
        AppBarButton(
            buttonIcon: Icons.search_sharp,
            indicatorStatus: false,
            buttonAction: () {
              print('go to search page');
            }),
        AppBarButton(
            buttonIcon: Icons.notifications_outlined,
            indicatorStatus: true,
            buttonAction: () {
              print('go to chat page');
            })
      ],
    );
  }
}

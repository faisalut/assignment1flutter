import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final bool indicatorStatus;

  const AppBarButton({Key? key, 
   required this.buttonIcon, 
   required this.buttonAction,
   required this.indicatorStatus,
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    indicatorStatus == true
        ? statusIndicator = Positioned(
            top: 20,
            right: 14,
            child: Container(
              width: 7,
              height: 7,
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle
                  ),
            ))
        : statusIndicator= const SizedBox();

    return Stack(children: [
      Container(
      margin:const EdgeInsets.all(5),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: secondaryColor,
          size: 26,
        ),
        onPressed: buttonAction,
      ),
    ),
      statusIndicator
    ]);
  }
}

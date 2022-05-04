import 'package:assignment1flutter/Modules/common/widgets/date_event_game_card.dart';
import 'package:assignment1flutter/Modules/data/data.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DateEventSection extends StatelessWidget {
  const DateEventSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap :true,
      itemCount: eventSections.length,
      itemBuilder: (context, index) =>
      Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children:  [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 30, bottom: 10, top: 20),
              child: Text(eventSections[index]['title'].toString(),
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Josefin_Sans')),
            ),
            ListView.builder(
              padding: const EdgeInsets.only(left: 20, right: 20),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount:int.parse(eventSections[index]['cards_count'].toString()) ,
              itemBuilder: (context, index2) =>
                DateEventGameCard(
                img: (eventSections[index]['cards'] as dynamic)[index2]['card_img'].toString(),
                buttons:(eventSections[index]['cards'] as dynamic)[index2]['component_buttons']
              ),
            )
          ],
        ))
      );

  }
}

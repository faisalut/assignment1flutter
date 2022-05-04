import 'package:assignment1flutter/Modules/common/widgets/filter_buttons.dart';
import 'package:assignment1flutter/Modules/data/data.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FilterSection extends StatefulWidget {
  const FilterSection({Key? key}) : super(key: key);

  @override
  FilterSectionState createState() => FilterSectionState();
}

class FilterSectionState extends State<FilterSection> {
  @override
  void initState() {
    super.initState();
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 23,
          margin: const EdgeInsets.only(bottom: 10, top: 20),
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 30),
            scrollDirection: Axis.horizontal,
            itemCount: filterSmallButton.length,
            itemBuilder: (context, index) => smallFilterButton(
                text: filterSmallButton[index]['name'].toString(),
                backgroundColor:
                    selectedIndex == index ? secondaryColor : dark2,
                color: selectedIndex == index ? Colors.white : dark3,
                onClick: () {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
          ),
        ),
        Container(
          height: 34,
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 30),
            scrollDirection: Axis.horizontal,
            itemCount: mainFilter.length,
            itemBuilder: (context, index) => bigFilterButton(
                text: mainFilter[index]['text'].toString(),
                color: mainFilter[index]['isSelect'] == true
                    ? secondaryColor
                    : dark4,
                icon:  mainFilter[index]['icon'].toString(),
                onClick: () {
                  setState(() {
                    if (mainFilter[index]['isSelect'] == true) {
                      mainFilter[index]['isSelect'] = false;
                    }
                    else{
                      mainFilter[index]['isSelect'] = true;
                    }
                  });
                }),
          ),
        )
      ],
    );
  }
}

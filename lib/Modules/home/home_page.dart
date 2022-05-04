import 'package:assignment1flutter/Modules/common/header/header.dart';
import 'package:assignment1flutter/Modules/home/sections/date_event_section.dart';
import 'package:assignment1flutter/Modules/home/sections/filter_section.dart';
import 'package:assignment1flutter/Modules/home/sections/popular_section.dart';
import 'package:assignment1flutter/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Widget thinDevider = Divider(
            thickness: 1,
            color: dark2,
          );
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
  
      appBar: const PreferredSize(
       preferredSize: Size.fromHeight(50),
       child: Header(),
      ),
      backgroundColor:primaryColor,
      body:ListView(
        children: [
         thinDevider,
         const PopularSection(),
         thinDevider,
         const FilterSection(),
         const DateEventSection()
        ],
      )
      
    );
  }
}



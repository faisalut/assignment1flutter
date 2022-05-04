import 'package:assignment1flutter/shared/assets/png/png.dart';

var filterSmallButton = [
  {'name': 'All'},
  {'name': 'PlayStation'},
  {'name': 'Nintendo'},
  {'name': 'X-Box'},
  {'name': 'PC'},
  {'name': 'Stream'},
  {'name': 'Studio'},
];

var mainFilter = [
  {'text': 'All', 'icon': energy, 'isSelect': false},
  {'text': 'Action', 'icon': energyColor, 'isSelect': true},
  {'text': 'Adventure', 'icon': energy, 'isSelect': false},
  {'text': 'Puzzle', 'icon': puzzle, 'isSelect': true},
  {'text': 'All', 'icon': energy, 'isSelect': false},
  {'text': 'Action', 'icon': energyColor, 'isSelect': true},
  {'text': 'Adventure', 'icon': energy, 'isSelect': false},
  {'text': 'Puzzle', 'icon': puzzle, 'isSelect': true},
];

List<Map<String, Object>> eventSections  = [
  {
    'title': 'Today',
    'cards': [
      {
        'card_img': popularImg2,
        'card_name' : 'FarCry 6',
        'component_buttons' : [
          {
            'icon': calender,
            'name': '12 Feb 2021',
            'width':105
          },
          {
            'icon': energyColor,
            'name': 'Action',
            'width':76
          },
          {
            'icon': energyBlue,
            'name': 'Adventure',
            'width':96
          },
          {
            'icon': offer,
            'name': '30% OFF',
            'width':90
          },

        ]

      },
      {
        'card_img': popularImg1,
        'card_name' : 'Riders Republic',
        'component_buttons' : [
          {
            'icon': calender,
            'name': '12 Feb 2021',
            'width':105
          },
          {
            'icon': energyColor,
            'name': 'Action',
            'width':76
          },
          {
            'icon': energyBlue,
            'name': 'Adventure',
            'width':96
          },

        ]

      }
    ],
    'cards_count':2
  },
  {
    'title': 'Last Week',
    'cards': [
      {
        'card_img': popularImg2,
        'card_name' : 'FarCry 6',
        'component_buttons' : [
          {
            'icon': calender,
            'name': '12 Feb 2021',
            'width':105
          },
          {
            'icon': energyColor,
            'name': 'Action',
            'width':76
          },
          {
            'icon': energyBlue,
            'name': 'Adventure',
            'width':96
          },
          {
            'icon': offer,
            'name': '30% OFF',
            'width':90
          },

        ]

      },
      {
        'card_img': popularImg1,
        'card_name' : 'Riders Republic',
        'component_buttons' : [
          {
            'icon': calender,
            'name': '12 Feb 2021',
            'width':105
          },
          {
            'icon': energyColor,
            'name': 'Action',
            'width':76
          },
          {
            'icon': energyBlue,
            'name': 'Adventure',
            'width':96
          },

        ]

      }
    ],
    'cards_count':2
  }
];


// social buttons 

var socialButtons = [
  appStore,
  android,
  xbox,
  sream,
  stadia,
  playstation,
  switchApp,
];


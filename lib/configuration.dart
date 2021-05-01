import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.white, blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cours', 'iconPath': 'images/cat.png'},
  {'name': 'Litterature', 'iconPath': 'images/dog.png'},
  {'name': 'Traduction', 'iconPath': 'images/rabbit.png'},
  {'name': 'Vocabulaire', 'iconPath': 'images/parrot.png'},
  {'name': 'Cours', 'iconPath': 'images/horse.png'}
];

List<Map> litterature = [
  {
    'name': 'Serin Musaa Ka',
    'oeurvres': [
      {
        'name': 'Yaasin',
        'path': 'assets/texts/SerinMusaaKa/yaasin.txt'
      },
      {
        'name': 'Xarnu bi',
        'path': 'assets/texts/SerinMusaaKa/xarnu_bi.txt'
      }
    ]
  }
];

List<Map> categories1 = [
  {
    'name': 'Cours', 
    'icon': 'C',
    'width': 40.0
  },
  {
    'name': 'Litterature', 
    'icon': 'L',
    'width': 55.0
  },
  {
    'name': 'Traduction', 
    'icon': 'T',
    'width': 57.0
  },
  {
    'name': 'Vocabulaire', 
    'icon': 'V',
    'width': 57.0
  },
  {
    'name': 'Cours', 
    'icon': 'C',
    'width': 40.0
  },
  {
    'name': 'Litterature', 
    'icon': 'L',
    'width': 55.0
  },
  {
    'name': 'Traduction', 
    'icon': 'T',
    'width': 57.0
  },
  {
    'name': 'Vocabulaire', 
    'icon': 'V',
    'width': 57.0
  }
];

List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Adoption'
  },
  {
    'icon': Icons.mail,
    'title' : 'Donation'
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title' : 'Profile'
  },
];

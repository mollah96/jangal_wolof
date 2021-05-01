import 'package:flutter/material.dart';
import 'package:jangal_wolof/Pages/CoursesPage.dart';
import 'package:jangal_wolof/Pages/Leebu/leebuScreen.dart';
import 'package:jangal_wolof/Pages/litteraturePage.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _myPage = PageController(initialPage: 0);

  double xOffset = 0;
  double yOffet = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffet, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      color: Colors.grey[200],
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 10, top: 50, right: 20),
            child: Column(
              children: [
                // menu + nom + user
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isDrawerOpen
                          ? IconButton(
                              icon: Icon(Icons.menu_open),
                              onPressed: () {
                                setState(() {
                                  xOffset = 0;
                                  yOffet = 0;
                                  scaleFactor = 1;
                                  isDrawerOpen = false;
                                });
                              })
                          : IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {
                                setState(() {
                                  xOffset = 230;
                                  yOffet = 150;
                                  scaleFactor = 0.6;
                                  isDrawerOpen = true;
                                });
                              }),
                      CircleAvatar()
                    ],
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Dalal ak jàmm \nSeex Mustafaa Faal",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(1.0)),
                      ),
                    )
                  ],
                ),

                // barre de recherche
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.only(left: 10, top: 30, bottom: 30),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Seetal fii benn baat",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),

                /*Container(
                  height: 520,
                  child: ListView.builder(
                    //scrollDirection: Axis.vertical,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: shadowList,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                categories[index]['iconPath'],
                                height: 50,
                                width: 50,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(categories[index]['name'])
                          ],
                        ),
                      );
                    },
                  ),
                ),*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CoursesPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BIND YI',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LitteraturePage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'KÀGGU',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LeebuPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'LÉEBU',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'BAATAAN',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          BottomNavBar()
        ],
      ),
    );
  }
}

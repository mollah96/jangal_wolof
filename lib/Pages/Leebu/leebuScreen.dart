import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jangal_wolof/Pages/Leebu/detailLeebuScreen.dart';
import 'package:jangal_wolof/models/leebu.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';

class LeebuPage extends StatefulWidget {
  @override
  _LeebuPageState createState() => _LeebuPageState();
}

class _LeebuPageState extends State<LeebuPage> {
  @override
  Widget build(BuildContext context) {
    final leebu = Leebu.fetchAll();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.only(top: 70, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child: Icon(FontAwesomeIcons.arrowLeft)),
                          Text(
                            "Léebu'y wolof",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 180,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: leebu.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLeebuScreen(
                                          text: leebu[index].text,
                                        )));
                          },
                          child: Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                leebu[index].text,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomNavBar()
        ],
      ),
    );
  }
}

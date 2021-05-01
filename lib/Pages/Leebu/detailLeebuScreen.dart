import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';

class DetailLeebuScreen extends StatefulWidget {
  final String text;

  DetailLeebuScreen({Key? key, required this.text}) : super(key: key);

  @override
  _DetailLeebuScreenState createState() => _DetailLeebuScreenState();
}

class _DetailLeebuScreenState extends State<DetailLeebuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child: Icon(FontAwesomeIcons.arrowLeft))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            widget.text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          /*decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffA22447).withOpacity(.05),
                                    offset: Offset(0, 0),
                                    blurRadius: 20,
                                    spreadRadius: 3)
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )),*/
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            widget.text,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  )
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jangal_wolof/Pages/Litteratures/literaryScreen.dart';
import 'package:jangal_wolof/models/author.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';

class AuthorScreen extends StatefulWidget {
  final Author author;

  AuthorScreen({Key? key, required this.author}) : super(key: key);
  @override
  _AuthorScreenState createState() => _AuthorScreenState();
}

class _AuthorScreenState extends State<AuthorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            widget.author.name,
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LiteraryScreen(
                                    literary: widget.author.literary[0],
                                  )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.author.literary[0].title,
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
                              builder: (context) => LiteraryScreen(
                                    literary: widget.author.literary[1],
                                  )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.author.literary[1].title,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
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

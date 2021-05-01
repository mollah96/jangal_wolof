import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jangal_wolof/models/bind.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bind = Bind.fetchAll();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            /*
            margin: EdgeInsets.symmetric(horizontal:20),
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
                    height: MediaQuery.of(context).size.height - 180,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: bind.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BindScreen(
                                          text: bind[index].text,
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
                              alignment: Alignment.center,
                              child: Text(
                                leebu[index].text,
                                textAlign: TextAlign.center,
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
                  )
                ],

              ),
            ),
          */),
          BottomNavBar()
        ],
      ),
    );
  }
}

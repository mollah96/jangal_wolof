import 'package:flutter/material.dart';
import 'package:jangal_wolof/homeScreen.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jàngal',
      theme: ThemeData(
        //primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: [
          HomeScreen()
        ],
      ),
    );
  }
}

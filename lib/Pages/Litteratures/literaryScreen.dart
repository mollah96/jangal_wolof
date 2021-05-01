import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jangal_wolof/models/literary.dart';
import 'package:jangal_wolof/widgets/bottomNavBar.dart';
import 'package:flutter/services.dart' show rootBundle;

class LiteraryScreen extends StatefulWidget {
  final Literary literary;

  const LiteraryScreen({Key? key, required this.literary}) : super(key: key);

  @override
  _LiteraryScreenState createState() => _LiteraryScreenState();
}

class _LiteraryScreenState extends State<LiteraryScreen> {

  
  String text = '';


  fetchFileData() async {
    String txt;

    txt =
        await rootBundle.loadString(widget.literary.textPath);
    
    setState(() {
      text = txt;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 50, bottom: 10),
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
                    "Sëriñ Musaa Ka",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 100),
            child: Text(widget.literary.title, style: GoogleFonts.lora(fontSize: 18, fontWeight: FontWeight.w700),),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(top:130, bottom: 80),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      child:
                          Text(text, style: GoogleFonts.lora(fontSize: 16)))
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

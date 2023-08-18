import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Help());
}

class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HelpState();
  }
}

class HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'This game will teach you a lot of information that you will need before entering school',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.pacifico().fontFamily),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You have to connect everything to suit it by Matching',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.pacifico().fontFamily),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Be careful when you connect wrongly your attempts will be deducted and you will have to repeat the round',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.pacifico().fontFamily),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.pacifico().fontFamily),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

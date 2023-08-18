import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walidgame/Questions/naturelevel.dart';

import 'Questions/animallevels.dart';
import 'Questions/mainlevel.dart';
import 'help.dart';
//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(QuizSeries());
}

class QuizSeries extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizSeriesState();
  }
}

class QuizSeriesState extends State<QuizSeries> {
  static bool myval = false;
  static bool myarabicval = false;
  @override
  void initState() {
    super.initState();
  }

  Future<bool> OnBackButton() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.yellow,
              title: Text(
                'Match And Learn App 💎',
                style: TextStyle(fontSize: 15),
              ),
              actions: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).pop();
                            });
                          },
                          child: Text(
                            'RESUME',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: QuizSeries(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Restart',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Help(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Help',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              SystemNavigator.pop();
                            });
                          },
                          child: Text(
                            'Quit',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: OnBackButton,
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          child: MaterialButton(
            color: Color(0xff3C318D),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              setState(() {
                Navigator.push(
                    context,
                    PageTransition(
                        child: MainLevel(),
                        type: PageTransitionType.bottomToTop));
                myval = pref.getBool('notification') ?? true;
                MainLevelState.arabicvalue = pref.getBool('arabic') ?? true;
                MainLevelState.isvisiblenature =
                    pref.getBool('visiblemynature') ?? true;
                AnimalLevelState.isvisiblmyanimal2 =
                    pref.getBool('visiblemyaniamal2') ?? true;
                AnimalLevelState.isvisiblmyanimal3 =
                    pref.getBool('visiblemyaniamal3') ?? true;
                AnimalLevelState.isvisiblmyanimal4 =
                    pref.getBool('visiblemyaniamal4') ?? true;
                AnimalLevelState.isvisiblmyanimal5 =
                    pref.getBool('visiblemyaniamal5') ?? true;
                NatureLevelState.isvisiblnature2 =
                    pref.getBool('visiblenature1') ?? true;
                NatureLevelState.isvisiblnature3 =
                    pref.getBool('visiblenature2') ?? true;
                NatureLevelState.isvisiblnature4 =
                    pref.getBool('visiblenature3') ?? true;
                NatureLevelState.isvisiblnature5 =
                    pref.getBool('visiblenature4') ?? true;
                NatureLevelState.isvisiblnature6 =
                    pref.getBool('visiblenature5') ?? true;
              });
            },
            child: Text(
              MainLevelState.arabicvalue == false ? 'Start' : 'أبدأ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.abel().fontFamily),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/myquiz.jpg'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}

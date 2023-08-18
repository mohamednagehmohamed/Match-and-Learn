import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:newgame/homepage.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walidgame/Questions/mynayures/nature1.dart';
import 'package:walidgame/Questions/mynayures/nature2.dart';
import 'package:walidgame/Questions/mynayures/nature3.dart';
import 'package:walidgame/Questions/mynayures/nature4.dart';
import 'package:walidgame/Questions/mynayures/nature5.dart';
import 'package:walidgame/Questions/naturelevel.dart';

import '../help.dart';
import 'animallevels.dart';
import 'mainlevel.dart';
import 'myanimals/myanimal1.dart';
import 'myanimals/myanimal2.dart';
import 'myanimals/myanimal3.dart';
import 'myanimals/myanimal4.dart';
import 'myanimals/myanimal5.dart';
//import 'package:page_transition/page_transition.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Celeberation());
}

class Celeberation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CeleberationState();
  }
}

class CeleberationState extends State<Celeberation> {
  // Icon icondata = Icon(Icons.local_activity);
  //bool isvivsible = true;
  checkshowanimal1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemyaniamal1', visible);
  }

  checkshowanimal2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemyaniamal2', visible);
  }

  checkshowanimal3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemyaniamal3', visible);
  }

  checkshowanimal4(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemyaniamal4', visible);
  }

  checkshowanimal5(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemyaniamal5', visible);
  }

  checkshowanimal6(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemyaniamal6', visible);
  }

  checkshownature(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblemynature', visible);
  }

  checkshownature1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblenature1', visible);
  }

  checkshownature2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblenature2', visible);
  }

  checkshownature3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblenature3', visible);
  }

  checkshownature4(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblenature4', visible);
  }

  checkshownature5(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblenature5', visible);
  }

  Future<bool> OnBackButton() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.yellow,
              title: Text(
                MainLevelState.arabicvalue == false
                    ? 'Match And Learn Game💠'
                    : 'تطابق وتعلم لعبة',
                textAlign: MainLevelState.arabicvalue == false
                    ? TextAlign.center
                    : TextAlign.center,
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
                            MainLevelState.arabicvalue == false
                                ? 'Resume'
                                : 'استئناف',
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
                                      child: AnimalLevel(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            MainLevelState.arabicvalue == false
                                ? 'Restart'
                                : 'اعادة البدء',
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
                            MainLevelState.arabicvalue == false
                                ? 'Help'
                                : 'المساعدة',
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
                            MainLevelState.arabicvalue == false
                                ? 'Quit'
                                : 'الخروج',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  Future<bool> TryAgainnow() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color(0xffB30074),
              title: Center(
                child: Text(
                  MainLevelState.arabicvalue == false
                      ? 'Answer Is Wrong😢'
                      : 'الجواب خاطئ😢',
                  style: TextStyle(fontSize: 20, color: Colors.yellow),
                ),
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
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: AnimalLevel(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            MainLevelState.arabicvalue == false
                                ? 'Try Again'
                                : 'حاول مجددا',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  Future<bool> Tryqurstionnow() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color(0xffB30074),
              title: Center(
                child: Text(
                  MainLevelState.arabicvalue == false
                      ? 'Time is Over'
                      : 'الوقت انتهي',
                  style: TextStyle(fontSize: 20, color: Colors.yellow),
                ),
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
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: AnimalLevel(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            MainLevelState.arabicvalue == false
                                ? 'Try Again'
                                : 'حاول مجددا',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: MainLevelState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Scaffold(
        //backgroundColor: Color(0xffC9D6FF),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                MainLevelState.arabicvalue == false
                    ? 'You Pass The Level Successfully'
                    : 'لقد نجحت في اجتياز المستوى',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.abel().fontFamily,
                    color: Colors.white),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    setState(() {
                      if (MyAnimal1State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: AnimalLevel(),
                                type: PageTransitionType.bottomToTop));
                        AnimalLevelState.isvisiblmyanimal2 = false;
                        checkshowanimal1(AnimalLevelState.isvisiblmyanimal2);
                      }
                      if (MyAnimal2State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: AnimalLevel(),
                                type: PageTransitionType.bottomToTop));
                        AnimalLevelState.isvisiblmyanimal3 = false;
                        checkshowanimal2(AnimalLevelState.isvisiblmyanimal3);
                      }
                      if (MyAnimal3State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: AnimalLevel(),
                                type: PageTransitionType.bottomToTop));
                        AnimalLevelState.isvisiblmyanimal4 = false;
                        checkshowanimal3(AnimalLevelState.isvisiblmyanimal4);
                      }
                      if (MyAnimal4State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: AnimalLevel(),
                                type: PageTransitionType.bottomToTop));
                        AnimalLevelState.isvisiblmyanimal5 = false;
                        checkshowanimal4(AnimalLevelState.isvisiblmyanimal5);
                      }
                      if (MyAnimal5State.pass == true) {
                        if (MyAnimal1State.pass == true &&
                            MyAnimal2State.pass == true &&
                            MyAnimal3State.pass == true &&
                            MyAnimal4State.pass == true) {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: NatureLevel(),
                                  type: PageTransitionType.bottomToTop));
                          MainLevelState.isvisiblenature = false;
                          checkshownature(MainLevelState.isvisiblenature);
                        } else {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: AnimalLevel(),
                                  type: PageTransitionType.bottomToTop));
                          MainLevelState.isvisiblenature = false;
                          checkshownature(MainLevelState.isvisiblenature);
                        }
                      }
                      if (Nature1State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: NatureLevel(),
                                type: PageTransitionType.bottomToTop));
                        NatureLevelState.isvisiblnature2 = false;
                        checkshownature1(NatureLevelState.isvisiblnature2);
                      }
                      if (Nature2State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: NatureLevel(),
                                type: PageTransitionType.bottomToTop));
                        NatureLevelState.isvisiblnature3 = false;
                        checkshownature2(NatureLevelState.isvisiblnature3);
                      }
                      if (Nature3State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: NatureLevel(),
                                type: PageTransitionType.bottomToTop));
                        NatureLevelState.isvisiblnature4 = false;
                        checkshownature3(NatureLevelState.isvisiblnature4);
                      }
                      if (Nature4State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: NatureLevel(),
                                type: PageTransitionType.bottomToTop));
                        NatureLevelState.isvisiblnature5 = false;
                        checkshownature4(NatureLevelState.isvisiblnature5);
                      }
                      if (Nature5State.pass == true) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: NatureLevel(),
                                type: PageTransitionType.bottomToTop));
                        NatureLevelState.isvisiblnature5 = false;
                        checkshownature4(NatureLevelState.isvisiblnature5);
                      }
                    });
                  },
                  child: Text(
                    MainLevelState.arabicvalue == false
                        ? 'Go To Next'
                        : 'اذهب إلى التالي',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.abel().fontFamily),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/myceleb.jpg'),
                  fit: BoxFit.fill)),
        ),
        /* Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Color(0xff1cefff),
                Color(0xffc0c0aa),
                Color(0xff1cefff),
              ]),
            ),
          ),
        ),*/
      ),
    );
  }
}

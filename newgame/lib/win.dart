import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'package:newgame/homepage.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walidgame/round10.dart';
import 'package:walidgame/round11.dart';
import 'package:walidgame/round12.dart';
import 'package:walidgame/round13.dart';
import 'package:walidgame/round2.dart';
import 'package:walidgame/round3.dart';
import 'package:walidgame/round4.dart';
import 'package:walidgame/round5.dart';
import 'package:walidgame/round6.dart';
import 'package:walidgame/round7.dart';
import 'package:walidgame/round8.dart';
import 'package:walidgame/round9.dart';
import 'package:walidgame/school2.dart';
import 'package:walidgame/sports.dart';
import 'package:walidgame/traffic2.dart';
import 'package:walidgame/trrafic1.dart';

import 'animal1.dart';
import 'animal2.dart';
import 'animal3.dart';
import 'cloth1.dart';
import 'cloth2.dart';
import 'cloth3.dart';
import 'color2.dart';
import 'color3.dart';
import 'eat1.dart';
import 'eat2.dart';
import 'emotions1.dart';
import 'family1.dart';
import 'family2.dart';
import 'football.dart';
import 'fruit1.dart';
import 'fruit2.dart';
import 'fruit3.dart';
import 'fruitcrop.dart';
import 'help.dart';
import 'hessab2.dart';
import 'homepage.dart';
import 'job1.dart';
import 'levels.dart';
import 'nationality1.dart';
import 'school1.dart';
//import 'package:page_transition/page_transition.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Win());
}

class Win extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WinState();
  }
}

class WinState extends State<Win> {
  // Icon icondata = Icon(Icons.local_activity);
  //bool isvivsible = true;
  checkshow(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visible', visible);
  }

  checkshowcolor3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblecolor3', visible);
  }

  checkshowfamily1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblfamily1', visible);
  }

  checkshowfamily2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefamily2', visible);
  }

  checkshowfamily3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefamily3', visible);
  }

  checkshowemotion1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleemotion1', visible);
  }

  checkshowemotion2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleemotion2', visible);
  }

  checkshowfruit1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleefruit1', visible);
  }

  checkshowfruit2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefruit2', visible);
  }

  checkshowfruit3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefruit3', visible);
  }

  checkshowfruit4(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefruit4', visible);
  }

  checkshoweat1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleeat1', visible);
  }

  checkshoweat2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleeat2', visible);
  }

  checkshowanimal1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleanimal1', visible);
  }

  checkshowanimal2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleanimal2', visible);
  }

  checkshowanimal3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleanimal3', visible);
  }

  checkshowanimal4(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleanimal4', visible);
  }

  checkshowcloyhes1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleclothes1', visible);
  }

  checkshowcloyhes2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleclothes2', visible);
  }

  checkshowcloyhes3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleclothes3', visible);
  }

  checkshowcloyhes4(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleclothes4', visible);
  }

  checkshowschool1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleschool1', visible);
  }

  checkshowschool2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleschool2', visible);
  }

  checkshowschool3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleschool3', visible);
  }

  checkshowschool4(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleschool4', visible);
  }

  checkshowschool5(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleschool5', visible);
  }

  checkshowschool6(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleschool6', visible);
  }

  checkshowtrrafic1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibletrrafic1', visible);
  }

  checkshowtrrafic2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibletrrafic2', visible);
  }

  checkshowtrrafic3(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibletrrafic3', visible);
  }

  checkshowflags1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleflags1', visible);
  }

  checkshowflags2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visibleflags2', visible);
  }

  checkshowjob1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblejob1', visible);
  }

  checkshowjob2(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblejob2', visible);
  }

  checkshowbody(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblebody', visible);
  }

  checkshowsports(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblesports', visible);
  }

  checkshowfootball(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefootball', visible);
  }

  checkshowffruitcrop1(bool visible) async {
    // visible = isvivsible;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('visiblefruitcrop1', visible);
  }

  static Future getshow() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    LevelsState.isvisiblecolor2 = pref.getBool('visible') ?? true;
    // return visible;
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
                                      child: Win(),
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
    return Scaffold(
        //backgroundColor: Color(0xffC9D6FF),
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.pinkAccent, Colors.purple])),
      child: Column(
        children: [
          Text(
            'You Pass This Level😃',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Image(image: AssetImage('assets/levels/cup.png')),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
            color: Colors.green,
            hoverColor: Colors.blue,
            minWidth: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              setState(() {
                if (HomePageState.scoreer == 6) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblecolor2 = false;
                  checkshow(LevelsState.isvisiblecolor2);
                }
                if (Color2State.scorer == 6) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblecolor3 = false;
                  checkshowcolor3(LevelsState.isvisiblecolor3);
                }
                if (Color3State.scorer == 6) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfamily1 = false;
                  checkshowfamily1(LevelsState.isvisiblfamily1);
                }
                if (Round7State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfamily2 = false;
                  checkshowfamily2(LevelsState.isvisiblfamily2);
                }
                if (Family2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfamily3 = false;
                  checkshowfamily3(LevelsState.isvisiblfamily3);
                }
                if (Family1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblemotions1 = false;
                  checkshowemotion1(LevelsState.isvisiblemotions1);
                }
                if (Round8State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblemotions2 = false;
                  checkshowemotion2(LevelsState.isvisiblemotions2);
                }
                if (Emotions1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfruit1 = false;
                  checkshowfruit1(LevelsState.isvisiblfruit1);
                }
                if (Fruit1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfruit2 = false;
                  checkshowfruit2(LevelsState.isvisiblfruit2);
                }
                if (Fruit2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfruit3 = false;
                  checkshowfruit3(LevelsState.isvisiblfruit3);
                }
                if (Fruit3State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfruit4 = false;
                  checkshowfruit4(LevelsState.isvisiblfruit4);
                }
                if (Round4State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibleat1 = false;
                  checkshoweat1(LevelsState.isvisibleat1);
                }
                if (Eat1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibleat2 = false;
                  checkshoweat2(LevelsState.isvisibleat2);
                }
                if (Eat2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblanima1 = false;
                  checkshowanimal1(LevelsState.isvisiblanima1);
                }
                if (Round2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblanima2 = false;
                  checkshowanimal2(LevelsState.isvisiblanima2);
                }
                if (Animal2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblanima3 = false;
                  checkshowanimal3(LevelsState.isvisiblanima3);
                }
                if (Animal3State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblanima4 = false;
                  checkshowanimal4(LevelsState.isvisiblanima4);
                }
                if (Animal1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblclothes1 = false;
                  checkshowcloyhes1(LevelsState.isvisiblclothes1);
                }
                if (Cloth1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblclothes2 = false;
                  checkshowcloyhes2(LevelsState.isvisiblclothes2);
                }
                if (Cloth2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblclothes3 = false;
                  checkshowcloyhes3(LevelsState.isvisiblclothes3);
                }
                if (Cloth3State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblclothes4 = false;
                  checkshowcloyhes4(LevelsState.isvisiblclothes4);
                }
                if (Round5State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblschool1 = false;
                  checkshowschool1(LevelsState.isvisiblschool1);
                }
                if (School1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblschool2 = false;
                  checkshowschool2(LevelsState.isvisiblschool2);
                }
                if (School2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblschool3 = false;
                  checkshowschool2(LevelsState.isvisiblschool3);
                }
                if (Round3State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblschool4 = false;
                  checkshowschool3(LevelsState.isvisiblschool4);
                }
                if (HessabState.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblschool5 = false;
                  checkshowschool4(LevelsState.isvisiblschool5);
                }
                if (Round9State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblschool6 = false;
                  checkshowschool5(LevelsState.isvisiblschool6);
                }
                if (Round10State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibltrrafic1 = false;
                  checkshowschool6(LevelsState.isvisibltrrafic1);
                }
                if (Traffic1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibltrrafic2 = false;
                  checkshowtrrafic1(LevelsState.isvisibltrrafic2);
                }
                if (Traffic2State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibltrrafic3 = false;
                  checkshowtrrafic2(LevelsState.isvisibltrrafic3);
                }
                if (Round13State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblflags1 = false;
                  checkshowflags1(LevelsState.isvisiblflags1);
                }
                if (Nationality1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblflags2 = false;
                  checkshowflags2(LevelsState.isvisiblflags2);
                }
                if (Round6State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibljob1 = false;
                  checkshowjob1(LevelsState.isvisibljob1);
                }
                if (Job1State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisibljob2 = false;
                  checkshowjob2(LevelsState.isvisibljob2);
                }
                if (Round11State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblbody1 = false;
                  checkshowbody(LevelsState.isvisiblbody1);
                }
                if (Round12State.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfootball = false;
                  checkshowfootball(LevelsState.isvisiblfootball);
                }
                if (FootballState.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblsport = false;
                  checkshowsports(LevelsState.isvisiblsport);
                }
                if (SportsState.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfruitcrop1 = false;
                  checkshowffruitcrop1(LevelsState.isvisiblfruitcrop1);
                }
                if (FruitCropState.scorer == 5) {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Levels(),
                          type: PageTransitionType.bottomToTop));
                  LevelsState.isvisiblfruitcrop1 = false;
                  checkshowffruitcrop1(LevelsState.isvisiblfruitcrop1);
                }
              });
            },
            /* onLongPress: () {
              setState(() {
                Container(
                  width: double.infinity - 200,
                  height: double.infinity - 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.black, Colors.black38]),
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                );
              });
            },*/
            child: Text(
              'Next Level😅',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          )
        ],
      ),
    )
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
        );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walidgame/Questions/mainlevel.dart';
import 'package:walidgame/levels.dart';
import 'package:walidgame/quizseries.dart';
import 'package:walidgame/series.dart';

import 'help.dart';
//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(CheckSeries());
}

class CheckSeries extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckSeriesState();
  }
}

class CheckSeriesState extends State<CheckSeries> {
  Map<String, Object> toen = {
    "chiledern_name": "Childern",
    "adult_name": "Adults",
  };
  Map<String, Object> toar = {
    "chiledern_name": "الأطفال",
    "adult_name": "الكبار",
  };

  static bool isen = true;
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
                                      child: CheckSeries(),
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
      child: Directionality(
        textDirection: QuizSeriesState.myarabicval == true
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Color(0xff9A66E5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpinKitChasingDots(
                duration: Duration(seconds: 2),
                color: Colors.orange,
                size: 80,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            Fluttertoast.showToast(
                                msg:
                                    "This Series for Childern that have ages Under 15 years old",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.tealAccent,
                                textColor: Colors.pink,
                                fontSize: 20.0);
                          });
                        },
                        icon: Icon(
                          Icons.info_sharp,
                          color: Colors.green,
                        )),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color(0xffFF8AAE),
                      onLongPress: () {
                        setState(() {
                          Fluttertoast.showToast(
                              msg:
                                  "This Series for Childern that have ages Under 15 years old",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.tealAccent,
                              textColor: Colors.pink,
                              fontSize: 20.0);
                        });
                      },
                      onPressed: () async {
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Series(),
                                  type: PageTransitionType.bottomToTop));
                          LevelsState.arabicvalue =
                              pref.getBool('arabic') ?? true;
                        });
                      },
                      child: Text(
                        MainLevelState.arabicvalue == false
                            ? 'Childern'
                            : 'الاطفال',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color(0xffFF8AAE),
                      onLongPress: () {
                        setState(() {
                          Fluttertoast.showToast(
                              msg:
                                  "This Series for Childern that have ages Over 15 years old",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.tealAccent,
                              textColor: Colors.pink,
                              fontSize: 20.0);
                        });
                      },
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
                        MainLevelState.arabicvalue == false
                            ? 'Adults'
                            : 'الكبار',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ),
                    /*   IconButton(
                        onPressed: () {
                          setState(() {
                            Fluttertoast.showToast(
                                msg:
                                    "This Series for Childern that have ages Under 15 years old",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.tealAccent,
                                textColor: Colors.pink,
                                fontSize: 20.0);
                          });
                        },
                      /*  icon: Icon(
                          Icons.info_sharp,
                          color: Colors.green,
                          size: 50,
                        )*/
                        ),*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

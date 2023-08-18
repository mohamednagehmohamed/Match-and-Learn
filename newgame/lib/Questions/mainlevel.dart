import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walidgame/Questions/animallevels.dart';
import 'package:walidgame/Questions/naturelevel.dart';
import 'package:walidgame/floatingbutton.dart';

import '../checkseries.dart';
import '../help.dart';
import '../quizseries.dart';
import '../round3.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(MainLevel());
}

class MainLevel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainLevelState();
  }
}

class MainLevelState extends State<MainLevel> {
/*  List<AllData> mydata = [
    AllData(
        Question: 'What Is Flutter',
        answer1: 'Open Source Programming Language',
        answer2: 'Not Free',
        answer3: 'Not Open Source',
        answer4: 'Not Open Source',
        correctanswer: 'Open Source Programming Language'),
    AllData(
        Question: 'What Is Dart',
        answer1: 'OOP Programming Language',
        answer2: 'Not Free',
        answer3: 'Used With Flutter',
        answer4: 'Use Java Script',
        correctanswer: 'Used With Flutter'),
  ];
  List myquestions = [
    'What Is Flutter',
    'What Is Dart',
  ];
  List myanswers = [
    'Open Source Programming Language',
    'Not Free',
    'Not Open Source',
    'Not Open Source',
    'OOP Programming Language',
    'Not Free',
    'Used With Flutter',
    'Use Java Script',
  ];
  List mycorrectanswers = [
    'Open Source Programming Language',
    'Used With Flutter'
  ];*/
  Color backcolorquestion = Color(0xff01B6ED);
  Color backcoloranswer1 = Colors.white;
  Color backcoloranswer2 = Colors.white;
  Color backcoloranswer3 = Colors.white;
  Color backcoloranswer4 = Colors.white;
  Color correctcolor = Colors.green;
  Color wrongcolor = Colors.red;
  // final Play myaudio = Play();
  int seconds = 30;
  int maxseconds = 30;
  Timer? timer;
  static bool isvisiblanimal = true;
  static bool isvisiblscience = true;
  static bool isvisiblesports = true;
  static bool isvisibletransport = true;
  static bool isvisiblenature = true;
  static bool isvisiblschool = true;
  static bool isvisiblprogramming = true;
  static bool isvisiblmedicin = true;
  static bool isvisiblengineer = true;
  static bool isvisiblcinema = true;
  static bool isvisiblliterature = true;
  bool val = false;
  static bool arabicvalue = false;
  static bool aniaml = false;
  static Icon lockedicon = Icon(
    Icons.lock_outlined,
    size: 40,
  );

  @override
  void initState() {
    super.initState();
    Fluttertoast.showToast(
        msg: MainLevelState.arabicvalue == false
            ? 'You should finish previous series to open other next ,and you will get more information when pass this levels'
            : 'يجب عليك إنهاء السلسلة السابقة لفتح الأخرى التالية ، وستحصل على مزيد من المعلومات عند اجتياز هذه المستويات',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
    val = QuizSeriesState.myval;
    // arabicvalue = QuizSeriesState.myarabicval;
    // myaudio.audioback();
    /* timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer?.cancel();
          print('Seconds is$seconds');
          Tryqurstionnow();
          // OnBackButton();
          /*Fluttertoast.showToast(
                            msg:
                                "This Series for Childern that have ages Over 15 years old",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.tealAccent,
                            textColor: Colors.pink,
                            fontSize: 20.0);*/
        }
      });
    });*/
  }

  /* @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }*/
  setnotification() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notification', val);
  }

  setlanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('arabic', arabicvalue);
  }

  setanimal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('animal', aniaml);
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
                            'Resume',
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
                                      child: MainLevel(),
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

  Future<bool> TryAgainnow() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color(0xffB30074),
              title: Center(
                child: Text(
                  'Answer Is Wrong 😭',
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
                                      child: MainLevel(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Try Aagin 😥',
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
                  'time is over😭',
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
                                      child: MainLevel(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Try Aagin 😥',
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
    // double size = MediaQuery.of(context).size.width * 0.077;
    double screenheight = MediaQuery.of(context).size.width * 0.17;
    return WillPopScope(
      onWillPop: OnBackButton,
      child: Directionality(
        textDirection: MainLevelState.arabicvalue == false
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xffAE27FE),
          drawer: Drawer(
            child: ListView(
              children: [
                Center(
                  child: Text(
                    MainLevelState.arabicvalue == false
                        ? 'Settings'
                        : 'إعدادات',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text(
                      MainLevelState.arabicvalue == false
                          ? 'Languages'
                          : 'اللغات',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    leading: Icon(
                      Icons.language,
                      color: Colors.black,
                    ),
                    trailing: Icon(Icons.ac_unit_rounded)),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    MainLevelState.arabicvalue == false
                        ? 'Notifications'
                        : 'إشعارات',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                          setnotification();
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    MainLevelState.arabicvalue == false ? 'Arabic' : 'عربي',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: arabicvalue,
                      onChanged: (value) {
                        setState(() {
                          arabicvalue = value;
                          setlanguage();
                        });
                      }),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            shape: MyFloatingButton(),
            backgroundColor: Colors.orange,
            foregroundColor: Colors.black,
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    PageTransition(
                        child: CheckSeries(),
                        type: PageTransitionType.rightToLeft));
              });
            },
            child: Icon(
              Icons.delete_outline,
              size: 30,
            ),
          ),
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              MainLevelState.arabicvalue == false
                  ? 'Question Series'
                  : 'سلسلة الأسئلة',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.abel().fontFamily,
                  color: Colors.white),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.purple),
            ),
            actions: [
              DropdownButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 28,
                ),
                items: [
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.red,
                          size: 22,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                            MainLevelState.arabicvalue == false
                                ? 'Log Out'
                                : 'الخروج',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.red,
                            ))
                      ],
                    ),
                    value: "log out",
                  )
                ],
                onChanged: (itemidentifier) {
                  if (itemidentifier == "log out") {
                    SystemNavigator.pop();
                  }
                },
              )
            ],
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: AnimalLevel(),
                                    type: PageTransitionType.fade));
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/animal.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblenature == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: NatureLevel(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/nature.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblenature,
                      )
                    ],
                  ),
                  /* Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblecolor3 == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg:
                                      "Finish Previous Level To Open This Level🧐",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/levels/color3.dart.png'),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblecolor3,
                      )
                    ],
                  )*/
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblscience == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/science.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblscience,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblesports == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/skinng.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblesports,
                      )
                    ],
                  ),
                  /* Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblecolor3 == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg:
                                      "Finish Previous Level To Open This Level🧐",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/levels/color3.dart.png'),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblecolor3,
                      )
                    ],
                  )*/
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisibletransport == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/transport.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblscience,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblprogramming == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/programming.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblesports,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblmedicin == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/medicin.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblscience,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblengineer == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/engineer.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblesports,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblliterature == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/literature.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblscience,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblcinema == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Round3(),
                                      type: PageTransitionType.bottomToTop));
                            } else {
                              Fluttertoast.showToast(
                                  msg: MainLevelState.arabicvalue == false
                                      ? 'Finish Previous Level To Open This Level🧐'
                                      : '"إنهاء المستوى السابق لفتح هذا المستوى🧐"',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/mainlevel/cinema.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblesports,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

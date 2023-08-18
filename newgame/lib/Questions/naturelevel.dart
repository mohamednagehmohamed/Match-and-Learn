import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/Questions/mynayures/nature1.dart';
import 'package:walidgame/Questions/mynayures/nature2.dart';
import 'package:walidgame/Questions/mynayures/nature3.dart';
import 'package:walidgame/Questions/mynayures/nature4.dart';
import 'package:walidgame/Questions/mynayures/nature5.dart';
import 'package:walidgame/floatingbutton.dart';

import '../help.dart';
import 'mainlevel.dart';

import 'myanimals/myanimal2.dart';
import 'myanimals/myanimal3.dart';
import 'myanimals/myanimal4.dart';
import 'myanimals/myanimal5.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(NatureLevel());
}

class NatureLevel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NatureLevelState();
  }
}

class NatureLevelState extends State<NatureLevel> {
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
  //final Play myaudio = Play();
  int seconds = 30;
  int maxseconds = 30;
  Timer? timer;
  static bool isvisiblnature2 = true;
  static bool isvisiblnature3 = true;
  static bool isvisiblnature4 = true;
  static bool isvisiblnature5 = true;
  static bool isvisiblnature6 = true;

  static Icon lockedicon = Icon(
    Icons.lock_outlined,
    size: 40,
  );

  @override
  void initState() {
    super.initState();

    //myaudio.audioback();
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
                                      child: NatureLevel(),
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
                                      child: NatureLevel(),
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
                                      child: NatureLevel(),
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
      child: Scaffold(
        backgroundColor: Color(0xffAE27FE),
        drawer: Drawer(
          child: ListView(),
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
                      child: MainLevel(),
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
            'Nature Series',
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
                                  child: Nature1(),
                                  type: PageTransitionType.fade));
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: screenheight,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/nileriver.jpg'),
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
                          if (isvisiblnature2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Nature2(),
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
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: screenheight,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/natureamazon.jpg'),
                        ),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblnature2,
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
                          if (isvisiblnature3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Nature3(),
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: screenheight,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/natureforest.jpg'),
                        ),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblnature3,
                    )
                  ],
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblnature4 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Nature4(),
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
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: screenheight,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/naturegreen.jpg'),
                        ),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblnature4,
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
                          if (isvisiblnature5 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Nature5(),
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: screenheight,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/natureriver.jpg'),
                        ),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblnature5,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

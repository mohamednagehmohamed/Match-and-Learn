import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/floatingbutton.dart';

import '../help.dart';
import 'mainlevel.dart';
import 'myanimals/myanimal1.dart';
import 'myanimals/myanimal2.dart';
import 'myanimals/myanimal3.dart';
import 'myanimals/myanimal4.dart';
import 'myanimals/myanimal5.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(AnimalLevel());
}

class AnimalLevel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimalLevelState();
  }
}

class AnimalLevelState extends State<AnimalLevel> {
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
  static bool isvisiblmyanimal1 = true;
  static bool isvisiblmyanimal2 = true;
  static bool isvisiblmyanimal3 = true;
  static bool isvisiblmyanimal4 = true;
  static bool isvisiblmyanimal5 = true;
  static bool isvisiblmyanimal6 = true;

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
              MainLevelState.arabicvalue == false
                  ? 'Animal Series🧐'
                  : 'سلسلة تعلم الحيوانات🧐',
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
                                    child: MyAnimal1(),
                                    type: PageTransitionType.fade));
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: screenheight,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/myanimals/tiger.jpg'),
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
                            if (isvisiblmyanimal2 == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: MyAnimal2(),
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
                                AssetImage('assets/myanimals/lion.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblmyanimal2,
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
                            if (isvisiblmyanimal3 == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: MyAnimal3(),
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
                                AssetImage('assets/myanimals/horse.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblmyanimal3,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisiblmyanimal4 == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: MyAnimal4(),
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
                                AssetImage('assets/myanimals/elephant.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblmyanimal4,
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
                            if (isvisiblmyanimal5 == false) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: MyAnimal5(),
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
                                AssetImage('assets/myanimals/cat.jpg'),
                          ),
                        ),
                      ),
                      Visibility(
                        child: lockedicon,
                        visible: isvisiblmyanimal5,
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
      ),
    );
  }
}

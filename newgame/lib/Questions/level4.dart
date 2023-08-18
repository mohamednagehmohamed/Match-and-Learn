import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgame/Questions/level5.dart';

import 'package:newgame/help.dart';
import 'package:newgame/playaudio.dart';

import 'package:page_transition/page_transition.dart';
//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Level4());
}

class Level4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Level4State();
  }
}

class Level4State extends State<Level4> {
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
  Color backcoloranswer1 = Color(0xff201F5B);
  Color backcoloranswer2 = Color(0xff201F5B);
  Color backcoloranswer3 = Color(0xff201F5B);
  Color backcoloranswer4 = Color(0xff201F5B);
  Color correctcolor = Colors.green;
  Color wrongcolor = Colors.red;
  final Play myaudio = Play();
  int seconds = 30;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    myaudio.audioback();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
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
    });
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
                                      child: Level4(),
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
                                      child: Level4(),
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
                                      child: Level4(),
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
    double size = MediaQuery.of(context).size.width * 0.077;
    double screenheight = MediaQuery.of(context).size.width * 0.17;
    return WillPopScope(
      onWillPop: OnBackButton,
      child: Scaffold(
          backgroundColor: Color(0xff352B84),
          /* appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Question 4😃',
              style: TextStyle(
                  fontSize: size,
                  fontWeight: FontWeight.normal,
                  fontFamily: GoogleFonts.pacifico().fontFamily),
              overflow: TextOverflow.fade,
              softWrap: true,
            ),
            /* flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff159957), Color(0xff155799)])),
          ),*/
            backgroundColor: Color(0xffAC2B88),
          ),*/
          body: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        seconds.toString(),
                        style: TextStyle(
                            fontSize: 50,
                            color: seconds <= 10 ? Colors.red : Colors.white),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: backcolorquestion,
                        borderRadius: BorderRadius.circular(20),
                        /*    gradient: LinearGradient(colors: [
                      Colors.black,
                      Colors.black54,
                      Colors.black
                    ])*/
                      ),
                      child: Center(
                        child: Text(
                          'Which is the biggest organ in our body? 🤔',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: screenheight,
                      decoration: BoxDecoration(
                        color: backcoloranswer1,
                        borderRadius: BorderRadius.circular(20),
                        /*  gradient: LinearGradient(colors: [
                      Colors.grey,
                      Colors.blueGrey,
                      Colors.grey
                    ])*/
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myaudio.failaudio();
                            backcoloranswer1 = wrongcolor;
                            TryAgainnow();
                            myaudio.playingaudio();
                          });
                        },
                        child: Text(
                          'Lungs',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: screenheight,
                      decoration: BoxDecoration(
                        color: backcoloranswer2,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() async {
                            myaudio.failaudio();
                            backcoloranswer2 = wrongcolor;
                            await TryAgainnow();
                          });
                        },
                        child: Text(
                          'Liver',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: screenheight,
                      decoration: BoxDecoration(
                        color: backcoloranswer3,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() async {
                            backcoloranswer3 = correctcolor;
                            timer?.cancel();
                            myaudio.audioback();
                            Future.delayed(
                                Duration(seconds: 4),
                                () => Navigator.push(
                                    context,
                                    PageTransition(
                                        child: Level5(),
                                        type: PageTransitionType.bottomToTop)));
                          });
                        },
                        child: Text(
                          'The Skin',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: screenheight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: backcoloranswer4,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() async {
                            myaudio.failaudio();
                            backcoloranswer4 = wrongcolor;
                            await TryAgainnow();
                          });
                        },
                        child: Text(
                          'Heart',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                        ),
                      ),
                    ),
                  ]),
            ],
          )),
    );
  }
}

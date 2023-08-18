import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/Questions/naturelevel.dart';
import 'package:walidgame/floatingbutton.dart';

import '../../help.dart';
import '../animallevels.dart';
import '../celeberation.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Nature3());
}

class Nature3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Nature3State();
  }
}

class Nature3State extends State<Nature3> {
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
  static bool pass = false;

  @override
  void initState() {
    super.initState();

    //myaudio.audioback();

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

  /* @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }*/

  Future<bool> OnBackButton() async {
    //timer?.cancel();
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
                                      child: Nature3(),
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
                                      child: Nature3(),
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
                              timer?.cancel();
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Nature3(),
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
              timer?.cancel();
              Navigator.push(
                  context,
                  PageTransition(
                      child: NatureLevel(),
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
            seconds.toString(),
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.abel().fontFamily,
                color: seconds <= 10 ? Colors.red : Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.purple),
          ),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: InteractiveViewer(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/forest.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Question',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.abel().fontFamily,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: RichText(
                    text: TextSpan(children: [
              TextSpan(
                  text: 'What is the biggest forests in the world ?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ]))),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      timer?.cancel();
                      backcoloranswer1 = wrongcolor;
                      pass = false;
                      TryAgainnow();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(left: 10),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: backcoloranswer1),
                    child: Center(
                      child: Text('Daintree Forest',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      //myaudio.playingaudio();
                      timer?.cancel();
                      backcoloranswer2 = wrongcolor;
                      pass = false;
                      TryAgainnow();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    margin: EdgeInsets.only(right: 10),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: backcoloranswer2),
                    child: Center(
                      child: Text('Tongass',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      timer?.cancel();
                      backcoloranswer3 = correctcolor;
                      pass = true;
                      Future.delayed(
                          Duration(seconds: 4),
                          () => Navigator.push(
                              context,
                              PageTransition(
                                  child: Celeberation(),
                                  type: PageTransitionType.bottomToTop)));
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(left: 10),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: backcoloranswer3),
                    child: Center(
                      child: Text('Congo Rainforest',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      timer?.cancel();
                      backcoloranswer4 = wrongcolor;
                      pass = false;
                      TryAgainnow();
                      timer?.cancel();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    margin: EdgeInsets.only(right: 10),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: backcoloranswer4),
                    child: Center(
                      child: Text('Amazon Rainforest',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

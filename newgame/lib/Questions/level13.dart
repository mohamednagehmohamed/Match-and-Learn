import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';

import '../help.dart';
import 'mainlevel.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Level13());
}

class Level13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Level13State();
  }
}

class Level13State extends State<Level13> with SingleTickerProviderStateMixin {
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

  int seconds = 30;
  int maxseconds = 30;
  Timer? timer;

  @override
  void initState() {
    super.initState();

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
                                      child: Level13(),
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
                                      child: Level13(),
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
                                      child: Level13(),
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
          backgroundColor: Colors.black,
          onPressed: () {
            setState(() {
              timer?.cancel();
              Navigator.push(
                  context,
                  PageTransition(
                      child: MainLevel(),
                      type: PageTransitionType.rightToLeft));
            });
          },
          child: Icon(Icons.delete_outline),
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
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'assets/harry.jpg',
                width: 200,
                height: 200,
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
                  text: 'What Is The Name Of The House',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Of Harry Botter At Hogwarts ?',
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
                      backcoloranswer1 = wrongcolor;
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
                      child: Text('HuffelePuff',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      timer?.cancel();
                      backcoloranswer2 = correctcolor;
                      Future.delayed(
                          Duration(seconds: 4),
                          () => Navigator.push(
                              context,
                              PageTransition(
                                  child: Level13(),
                                  type: PageTransitionType.bottomToTop)));
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
                      child: Text('Gryffindor',
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
                      backcoloranswer3 = wrongcolor;
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
                        color: backcoloranswer3),
                    child: Center(
                      child: Text('Revenclow',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      backcoloranswer4 = wrongcolor;
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
                        color: backcoloranswer4),
                    child: Center(
                      child: Text('siytherin',
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

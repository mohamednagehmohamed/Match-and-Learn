/*import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:jodigame/checkseries.dart';
import 'package:jodigame/help.dart';
import 'package:jodigame/mychat/homechat.dart';
import 'package:jodigame/quizseries.dart';



import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Chat());
}

class Chat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatState();
  }
}

class ChatState extends State<Chat> {
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
  Color backcolorquestion = const Color(0xff01B6ED);
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
  static Icon lockedicon = Icon(
    Icons.lock_outlined,
    size: 40,
  );
  // final auth = FirebaseAuth.instance;
  // late User signeduser;

  @override
  void initState() {
    super.initState();
    //getcurrentuser();

    val = QuizSeriesState.myval;
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

  /* getcurrentuser() {
    final user = auth.currentUser;
    //final signeduser = FirebaseAuth.instance;
    try {
      if (user != null) {
        signeduser = user;
        print(signeduser.email);
      }
    } catch (e) {
      print(e);
    }
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
                                      child: Chat(),
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
                                      child: Chat(),
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
                                      child: Chat(),
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

          child: ListView(
            children: [
              Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  title: Text(
                    'Languages',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  trailing: Icon(Icons.ac_unit_rounded)),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  PageTransition(
                      child: CheckSeries(),
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
          title: Row(
            children: [
              Image.asset(
                'assets/chatlogo.jpg',
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Chat App',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.abel().fontFamily,
                    color: Colors.white),
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.purple),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    //auth.signOut();
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeChat(),
                            type: PageTransitionType.leftToRight));
                  });
                },
                icon: Icon(
                  Icons.cancel,
                  size: 40,
                ))
          ],
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /* Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.orange, width: 2))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: TextField(
                          onChanged: (Value) {},
                          decoration: InputDecoration(
                              hintText: 'Enter Your Message',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              border: InputBorder.none),
                        )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  )*/
                ],
              ))
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/chatback.jpg'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
*/
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:page_transition/page_transition.dart';

import 'help.dart';
import 'load.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Finish());
}

class Finish extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FinishState();
  }
}

class FinishState extends State<Finish> {
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
                                      child: Finish(),
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
        // backgroundColor: Color(0xffdb36a4),
        body: Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xfffc00ff), Color(0xff00dbde)])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(repeatForever: true, animatedTexts: [
              ScaleAnimatedText('Congrats! What a great accomplishment,',
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow))
            ]),
            SizedBox(
              height: 1,
            ),
            Image.asset('assets/congratulation.png'),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Load(), type: PageTransitionType.fade));
                  });
                },
                child: Icon(
                  Icons.repeat,
                  color: Colors.yellow,
                  size: 50,
                )),
            /*IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Load(),
                            type: PageTransitionType.topToBottom));
                  });
                },
                icon: Icon(
                  Icons.repeat,
                  size: 40,
                  color: Colors.yellow,
                ))*/
          ],
        ),
      ),
    ));
  }
}

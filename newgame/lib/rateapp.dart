import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:like_button/like_button.dart';

import 'package:page_transition/page_transition.dart';

import 'help.dart';

//import 'package:page_transition/page_transition.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(RatePage());
}

class RatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RatePageState();
  }
}

class RatePageState extends State<RatePage> {
  int count = 15;
  int id = 1;
  bool ischecked = false;
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
                                      child: RatePage(),
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
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          'Application Rate ',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.milonga().fontFamily),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black87, Colors.black45, Colors.black26])),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              icon: Icon(CupertinoIcons.back)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('😍قم بتقييم البرنامج من هنا !😍',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.acme().fontFamily,
                    color: Colors.pinkAccent)),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LikeButton(
                    size: 50,
                    likeCount: count,
                    likeCountPadding: EdgeInsets.only(left: 12),
                    countBuilder: (count, isliked, text) {
                      //final color = Colors.pinkAccent;
                      return Text(
                        text,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink),
                      );
                    },
                  )
                  /* LikeButton(
                    size: 50,
                    likeCount: count,
                    likeCountPadding: EdgeInsets.only(left: 12),
                    countBuilder: (count, isliked, text) {
                      //final color = Colors.pinkAccent;
                      return Text(
                        text,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink),
                      );
                    },
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

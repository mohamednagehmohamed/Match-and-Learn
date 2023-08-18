import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/rateapp.dart';
import 'package:walidgame/win.dart';

import 'eat.dart';
import 'help.dart';
import 'levels.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Fruit3());
}

class Fruit3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Fruit3State();
  }
}

class Fruit3State extends State<Fruit3> {
  static int scorer = 0;

  final Map<String, bool> score = {};
  final Map<String, Image> choices = {
    'Broccoli': Image.asset('assets/gar/broccoli.png'),
    'Eggplant': Image.asset('assets/gar/eggplant.png'),
    'Garlic': Image.asset('assets/gar/garlic.png'),
    'Mushrooms': Image.asset('assets/gar/mushrooms.png'),
    'Potato': Image.asset('assets/gar/potato.png'),
  };
  int seed = 0;
  bool isvisable1 = true;
  bool isvisable2 = true;
  bool isvisable3 = true;
  Image heart = Image.asset(
    'assets/myheart.png',
    width: 20,
    height: 20,
  );
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
                                      child: Fruit3(),
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
    double size = MediaQuery.of(context).size.width * 0.077;
    return WillPopScope(
      onWillPop: OnBackButton,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amber, Colors.yellowAccent, Colors.amber]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/homepage.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Levels(),
                                  type: PageTransitionType.bottomToTop));
                        });
                      },
                      child: Text(
                        'Home Page',
                        style: TextStyle(fontSize: 35),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/rating.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: RatePage(),
                                  type: PageTransitionType.bottomToTop));
                        });
                      },
                      child: Text(
                        'Rate',
                        style: TextStyle(fontSize: 35),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/user.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Help(),
                                  type: PageTransitionType.bottomToTop));
                        });
                      },
                      child: Text(
                        'Information ',
                        style: TextStyle(fontSize: 35),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/logout.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          SystemNavigator.pop();
                        });
                      },
                      child: Text(
                        'Log Out ',
                        style: TextStyle(fontSize: 35),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xff22c1c3),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Score ${score.length} /5',
            style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff159957), Color(0xff155799)])),
          ),
          actions: [
            Visibility(visible: isvisable1, child: heart),
            SizedBox(
              width: 1,
            ),
            Visibility(visible: isvisable2, child: heart),
            SizedBox(
              width: 1,
            ),
            Visibility(visible: isvisable3, child: heart),
          ],
          leading: IconButton(
              onPressed: () {
                setState(() {
                  if (score.length == 5) {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Eat(), type: PageTransitionType.fade));
                  }
                });
              },
              icon: Icon(Icons.next_plan)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              score.clear();
              seed++;
            });
          },
          child: Icon(Icons.refresh),
        ),
        body: isvisable1 == false && isvisable2 == false && isvisable3 == false
            ? nextbutton()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys
                        .map((emoji) => Draggable<String>(
                              data: emoji,
                              child: Emoji(
                                  emoji: score[emoji] == true ? '' : emoji),
                              feedback: Emoji(emoji: emoji),
                              childWhenDragging: Emoji(emoji: '💡'),
                            ))
                        .toList(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:
                        choices.keys.map((emoji) => buildtarget(emoji)).toList()
                          ..shuffle(Random(seed)),
                  )
                ],
              ),
      ),
    );
  }

  Widget buildtarget(emoji) {
    double screenheight = MediaQuery.of(context).size.height * 0.12;
    double screenwidth = MediaQuery.of(context).size.width * 0.4;
    return DragTarget(
      builder: (context, incoming, rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            height: screenheight,
            width: screenwidth,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText('Correct!👏',
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          );
        } else {
          return Container(
            //child: Text(choices[emoji]),
            // color: choices[emoji],
            child: choices[emoji],
            height: screenheight,
            width: screenwidth,
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          scorer++;
        });
        if (score.length == 5) {
          Navigator.push(context,
              PageTransition(child: Win(), type: PageTransitionType.fade));
        }
      },
      onLeave: (data) {
        setState(() {
          if (isvisable1 == true && isvisable2 == true && isvisable3 == true) {
            isvisable1 = false;
          } else if (isvisable1 == false &&
              isvisable2 == true &&
              isvisable3 == true) {
            isvisable2 = false;
          } else if (isvisable1 == false &&
              isvisable2 == false &&
              isvisable3 == true) {
            isvisable3 = false;
          }
        });
      },
    );
  }

  Widget nextbutton() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text('You Lose 😞😞',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.pacifico().fontFamily)),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Fruit3(), type: PageTransitionType.fade));
                });
              },
              child: Text('Try Again',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.pacifico().fontFamily)))
        ],
      ),
    );
  }
}

class Emoji extends StatelessWidget {
  final String emoji;

  const Emoji({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          alignment: Alignment.center,
          height: 50,
          padding: EdgeInsets.all(10),
          child: Text(
            emoji,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}

import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/levels.dart';
import 'package:walidgame/win.dart';

import 'color2.dart';
import 'help.dart';

// ignore: import_of_legacy_library_into_null_safe

//import 'package:mygame/homepage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  static int scoreer = 0;

  final Map<String, bool> score = {};
  final Map<String, Color> choices = {
    LevelsState.arabicvalue == false ? 'Green' : 'لون أخضر': Colors.green,
    LevelsState.arabicvalue == false ? 'Yellow' : 'أصفر': Colors.yellow,
    LevelsState.arabicvalue == false ? 'Red' : 'أحمر': Colors.red,
    LevelsState.arabicvalue == false ? 'Purple' : 'نفسجي': Colors.purple,
    LevelsState.arabicvalue == false ? 'Brown' : 'بنى': Colors.brown,
    LevelsState.arabicvalue == false ? 'Orange' : 'البرتقالي': Colors.orange,
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

  /*void initState() {
    super.initState();
    if (score.length == 5) {
      nextbutton();
    }
  }*/
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
                LevelsState.arabicvalue == false
                    ? 'Match And Learn App 💎'
                    : 'تطابق وتعلم التطبيق 💎',
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
                            LevelsState.arabicvalue == false
                                ? 'Resume'
                                : 'العودة مرة اخري',
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
                                      child: HomePage(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            LevelsState.arabicvalue == false
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
                            LevelsState.arabicvalue == false
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
                            LevelsState.arabicvalue == false
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: OnBackButton,
      child: Directionality(
        textDirection: LevelsState.arabicvalue == false
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
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
            title: Text(
              'Score ${score.length} /6',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff159957), Color(0xff155799)])),
            ),
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    if (score.length == 6) {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: Color2(), type: PageTransitionType.fade));
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
          body: isvisable1 == false &&
                  isvisable2 == false &&
                  isvisable3 == false
              ? nextbutton()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: choices.keys
                          .map((emoji) => Draggable<String>(
                                data: emoji,
                                child: Emoji(
                                    emoji: score[emoji] == true ? '✅' : emoji),
                                feedback: Emoji(emoji: emoji),
                                childWhenDragging: Emoji(emoji: '💡'),
                              ))
                          .toList(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: choices.keys
                          .map((emoji) => buildtarget(emoji))
                          .toList()
                        ..shuffle(Random(seed)),
                    )
                  ],
                ),
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
                FadeAnimatedText(
                    LevelsState.arabicvalue == false ? 'Correct!👏' : 'صحيح!👏',
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          );
        } else {
          return Container(
            color: choices[emoji],
            height: screenheight,
            width: screenwidth,
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          scoreer++;
        });
        if (score.length == 6) {
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
            child: Text(
                LevelsState.arabicvalue == false
                    ? 'You Lose 😢 😢'
                    : 'أنت تخسر 😢 😢',
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
                          child: HomePage(), type: PageTransitionType.fade));
                });
              },
              child: Text(
                  LevelsState.arabicvalue == false ? 'Try Again' : 'حاول مجددا',
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
        padding: EdgeInsets.all(5),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/round4.dart';

import 'help.dart';
//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Fruit());
}

class Fruit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FruitState();
  }
}

class FruitState extends State<Fruit> {
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
                                      child: Fruit(),
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
    return WillPopScope(
      onWillPop: OnBackButton,
      child: Scaffold(
        backgroundColor: Color(0xff8EE4AF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Learn Fruits and Vegitabls 👪',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.pacifico().fontFamily)),
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/fruit.jpg'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: GestureDetector(
                child: Image.asset('assets/play.png'),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Round4(), type: PageTransitionType.fade));
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
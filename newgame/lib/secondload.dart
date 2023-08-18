import 'dart:async';
import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:page_transition/page_transition.dart';

import 'checkseries.dart';
import 'help.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(SecondLoad());
}

class Data {
  final String imageurl;

  Data(this.imageurl);
}

class SecondLoad extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondLoadState();
  }
}

class SecondLoadState extends State<SecondLoad> {
  bool visible = false;
  final PageController controller = PageController(initialPage: 1);
  int currentindex = 0;
  bool change = false;
  final List<Data> mydata = [
    Data('assets/loadload/animal.jpg'),
    Data('assets/loadload/color.jpg'),
    Data('assets/loadload/emotion.jpg'),
    Data('assets/loadload/family.jpg'),
    Data('assets/loadload/flags.jpg'),
    Data('assets/loadload/fruit.jpg'),
    Data('assets/loadload/school.jpg'),
    Data('assets/loadload/transport.jpg'),
  ];

  double opacityindex = 0;
  @override
  Void? initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentindex < 7 && opacityindex < 1) {
        currentindex++;
        opacityindex += 0.1;
        controller.animateToPage(currentindex,
            duration: Duration(microseconds: 300), curve: Curves.easeIn);
      }
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
                                      child: SecondLoad(),
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
        body: PageView(
            controller: controller,
            children: mydata
                .map((e) => Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Opacity(
                          opacity: opacityindex,
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
                                          child: CheckSeries(),
                                          type: PageTransitionType.fade));
                                });
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.amber),
                              )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(e.imageurl),
                              fit: BoxFit.fill)),
                    ))
                .toList(),
            onPageChanged: (val) {
              setState(
                () {
                  currentindex = val;
                  /*if (currentindex == 7) {
                    Future.delayed(
                        Duration(seconds: 2),
                        () => Navigator.push(
                            context,
                            PageTransition(
                                child: ColorLoad(),
                                type: PageTransitionType.bottomToTop)));*/
                },
              );
            }),
      ),
    );
  }
}

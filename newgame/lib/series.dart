//import 'dart:js';

//import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'help.dart';
import 'levels.dart';

//import 'package:newgame/levels.dart';
//import 'package:newgame/load.dart';

//import 'package:newgame/nationality1.dart';
//import 'package:newgame/family2.dart';
//import 'package:newgame/fruit2.dart';

//import 'package:newgame/homepage.dart';
//import 'package:newgame/load.dart';
//import 'dart:ffi';

//import 'package:mygame/homepage.dart';

void main() {
  runApp((Series()));
}

class Series extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SeriesState();
  }
}

class SeriesState extends State<Series> with SingleTickerProviderStateMixin {
  final TextEditingController mycontroller = TextEditingController();
  static String str = "";
  late AnimationController controller;
  late Animation<double> animation;

  bool islike = true;
  //late File _image;

  // final picker = ImagePicker();

  checkname(String str) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name', str);
  }

  /* getname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    str = pref.getString('name') ?? "";
  }*/

  @override
  void initState() {
    super.initState();
    Fluttertoast.showToast(
        msg:
            "This like agame for teaching students and childern more information and basics ,they must be aware of with this",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);

    // str = mycontroller.text;
    controller = AnimationController(
        vsync: this, duration: Duration(microseconds: 2000));
    animation = Tween(begin: 00.0, end: 600.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    //controller.forward();
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
                                      child: Series(),
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
    return Builder(builder: (context) {
      return WillPopScope(
        onWillPop: OnBackButton,
        child: Scaffold(
            backgroundColor: Color(0xff8F5BE0),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  autofocus: true,
                  subtitle: Text(
                    'Your Name ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: mycontroller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purpleAccent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      hintText: 'Enter Your Name Here',
                      hintStyle: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontSize: 22, color: Colors.white)),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: Color(0xffFF8AAE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () async {
                    SharedPreferences pref =
                        await SharedPreferences.getInstance();
                    setState(() {
                      LevelsState.isvisiblecolor2 =
                          pref.getBool('visible') ?? true;
                      LevelsState.isvisiblecolor3 =
                          pref.getBool('visiblecolor3') ?? true;
                      LevelsState.isvisiblanima1 =
                          pref.getBool('visibleanimal1') ?? true;
                      LevelsState.isvisiblanima2 =
                          pref.getBool('visibleanimal2') ?? true;
                      LevelsState.isvisiblanima3 =
                          pref.getBool('visibleanimal3') ?? true;
                      LevelsState.isvisiblanima4 =
                          pref.getBool('visibleanimal4') ?? true;
                      LevelsState.isvisiblclothes1 =
                          pref.getBool('visibleclothes1') ?? true;
                      LevelsState.isvisiblclothes2 =
                          pref.getBool('visibleclothes2') ?? true;
                      LevelsState.isvisiblclothes3 =
                          pref.getBool('visibleclothes3') ?? true;
                      LevelsState.isvisiblclothes4 =
                          pref.getBool('visibleclothes4') ?? true;
                      LevelsState.isvisibleat1 =
                          pref.getBool('visibleeat1') ?? true;
                      LevelsState.isvisibleat2 =
                          pref.getBool('visibleeat2') ?? true;
                      LevelsState.isvisiblemotions1 =
                          pref.getBool('visibleemotion1') ?? true;
                      LevelsState.isvisiblemotions2 =
                          pref.getBool('visibleemotion2') ?? true;
                      LevelsState.isvisiblfamily1 =
                          pref.getBool('visiblfamily1') ?? true;
                      LevelsState.isvisiblfamily2 =
                          pref.getBool('visiblefamily2') ?? true;
                      LevelsState.isvisiblfamily3 =
                          pref.getBool('visiblefamily3') ?? true;
                      LevelsState.isvisiblfamily4 =
                          pref.getBool('visiblfamily4') ?? true;
                      LevelsState.isvisiblfruit1 =
                          pref.getBool('visibleefruit1') ?? true;
                      LevelsState.isvisiblfruit2 =
                          pref.getBool('visiblefruit2') ?? true;
                      LevelsState.isvisiblfruit3 =
                          pref.getBool('visiblefruit3') ?? true;
                      LevelsState.isvisiblfruit4 =
                          pref.getBool('visiblefruit4') ?? true;
                      LevelsState.isvisiblschool1 =
                          pref.getBool('visibleschool1') ?? true;
                      LevelsState.isvisiblschool2 =
                          pref.getBool('visibleschool2') ?? true;
                      LevelsState.isvisiblschool3 =
                          pref.getBool('visibleschool3') ?? true;
                      LevelsState.isvisiblschool4 =
                          pref.getBool('visibleschool4') ?? true;
                      LevelsState.isvisiblschool5 =
                          pref.getBool('visibleschool5') ?? true;
                      LevelsState.isvisiblschool6 =
                          pref.getBool('visibleschool6') ?? true;
                      LevelsState.isvisibljob1 =
                          pref.getBool('visiblejob1') ?? true;
                      LevelsState.isvisibljob2 =
                          pref.getBool('visiblejob2') ?? true;
                      LevelsState.isvisiblflags1 =
                          pref.getBool('visibleflags1') ?? true;
                      LevelsState.isvisiblflags2 =
                          pref.getBool('visibleflags2') ?? true;
                      LevelsState.isvisibltrrafic1 =
                          pref.getBool('visibletrrafic1') ?? true;
                      LevelsState.isvisibltrrafic2 =
                          pref.getBool('visibletrrafic2') ?? true;
                      LevelsState.isvisibltrrafic3 =
                          pref.getBool('visibletrrafic3') ?? true;
                      LevelsState.isvisiblfootball =
                          pref.getBool('visiblefootball') ?? true;
                      LevelsState.isvisiblsport =
                          pref.getBool('visiblesports') ?? true;
                      LevelsState.isvisiblbody1 =
                          pref.getBool('visiblebody') ?? true;
                      LevelsState.isvisiblfruitcrop1 =
                          pref.getBool('visiblefruitcrop1') ?? true;

                      //controller.forward();
                      str = mycontroller.text;
                      checkname(str);
                      Navigator.push(
                          context,
                          PageTransition(
                              child: Levels(), type: PageTransitionType.fade));
                    });
                  },
                  child: Text(
                    ' Ok  ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      );
    });
  }
}

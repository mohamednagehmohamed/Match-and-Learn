import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

//import 'package:newgame/homepage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walidgame/checkseries.dart';
import 'package:walidgame/floatingbutton.dart';
import 'package:walidgame/rateapp.dart';
import 'package:walidgame/round10.dart';
import 'package:walidgame/round11.dart';
import 'package:walidgame/round12.dart';
import 'package:walidgame/round13.dart';
import 'package:walidgame/round2.dart';
import 'package:walidgame/round3.dart';
import 'package:walidgame/round4.dart';
import 'package:walidgame/round5.dart';
import 'package:walidgame/round6.dart';
import 'package:walidgame/round9.dart';
import 'package:walidgame/school1.dart';
import 'package:walidgame/school2.dart';
import 'package:walidgame/series.dart';
import 'package:walidgame/sports.dart';
import 'package:walidgame/traffic2.dart';
import 'package:walidgame/trrafic1.dart';

import 'animal.dart';
import 'animal2.dart';
import 'animal3.dart';
import 'cloth1.dart';
import 'cloth2.dart';
import 'cloth3.dart';
import 'color2.dart';
import 'color3.dart';
import 'colorload.dart';
import 'eat1.dart';
import 'eat2.dart';
import 'emotions1.dart';
import 'emotios.dart';
import 'family.dart';
import 'family1.dart';
import 'family2.dart';
import 'football.dart';
import 'fruit1.dart';
import 'fruit2.dart';
import 'fruit3.dart';
import 'fruitcrop.dart';
import 'help.dart';
import 'hessab2.dart';
import 'job1.dart';
import 'nationality1.dart';
import 'notification.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Levels());
}

class Levels extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LevelsState();
  }
}

class LevelsState extends State<Levels> with SingleTickerProviderStateMixin {
  static bool isvisiblfruitcrop1 = true;
  static bool isvisiblsport = true;
  static bool isvisiblfootball = true;
  static bool isvisiblecolor2 = true;
  static bool isvisiblecolor3 = true;
  static bool isvisiblanima1 = true;
  static bool isvisiblanima2 = true;
  static bool isvisiblanima3 = true;
  static bool isvisiblanima4 = true;
  static bool isvisiblbody1 = true;
  static bool isvisiblclothes1 = true;
  static bool isvisiblclothes2 = true;
  static bool isvisiblclothes3 = true;
  static bool isvisibleat1 = true;
  static bool isvisibleat2 = true;
  static bool isvisiblemotions1 = true;
  static bool isvisiblemotions2 = true;
  static bool isvisiblfamily1 = true;
  static bool isvisiblfamily2 = true;
  static bool isvisiblfamily3 = true;
  static bool isvisiblfamily4 = true;
  static bool isvisiblflags1 = true;
  static bool isvisiblflags2 = true;
  static bool isvisiblfruit1 = true;
  static bool isvisiblfruit2 = true;
  static bool isvisiblfruit3 = true;
  static bool isvisiblfruit4 = true;
  static bool isvisibljob1 = true;
  static bool isvisibljob2 = true;
  static bool isvisiblschool4 = true;
  static bool isvisiblschool5 = true;
  static bool isvisiblschool1 = true;
  static bool isvisiblschool2 = true;
  static bool isvisiblschool3 = true;
  static bool isvisiblschool6 = true;
  static bool isvisibltrrafic1 = true;
  static bool isvisibltrrafic2 = true;
  static bool isvisibltrrafic3 = true;
  static bool isvisiblclothes4 = true;
  static Icon lockedicon = Icon(Icons.lock_outlined);
  static bool arabicvalue = false;
  setlanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('arabic', arabicvalue);
  }

  showtoastenglish() {
    Fluttertoast.showToast(
        msg:
            "This is a game for children's education, through which children can learn a lot before entering school",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  showtoastarabic() {
    Fluttertoast.showToast(
        msg:
            "هذه اللعبة لتعليم الاطفال ويستطيع الاطفال من خلالها تعلم الكثير قبل دخول المدرسة",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void initState() {
    super.initState();
    arabicvalue == false ? showtoastenglish() : showtoastarabic();
    // WinState.getshow();
    // SharedPreferences pref = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    // String str;
    return SafeArea(
        child: Directionality(
      textDirection:
          arabicvalue == false ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    PageTransition(
                        child: CheckSeries(),
                        type: PageTransitionType.leftToRight));
              });
            },
            child: Icon(Icons.delete),
            shape: MyFloatingButton(),
            foregroundColor: Colors.black,
            backgroundColor: Colors.orange),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(color: Color(0xffF0AAFF1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.white,
                    ),
                    /* Image.asset(
                      'assets/homepage.png',
                      width: 50,
                      height: 50,
                    ),*/
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
                        arabicvalue == false ? 'Home Page' : 'الصفحة الرئيسية',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.rate_review,
                      size: 50,
                      color: Colors.white,
                    ),
                    /* Image.asset(
                      'assets/rating.png',
                      width: 50,
                      height: 50,
                    ),*/
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
                        arabicvalue == false ? 'Rate' : 'معدل',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.verified_user,
                      size: 50,
                      color: Colors.white,
                    ),
                    /*Image.asset(
                      'assets/user.png',
                      width: 50,
                      height: 50,
                    ),*/
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
                        arabicvalue == false ? 'Informations' : 'معلومات',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    /*  Image.asset(
                      'assets/user.png',
                      width: 50,
                      height: 50,
                    ),*/
                    Icon(
                      Icons.notifications,
                      size: 50,
                      color: Colors.white,
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
                                  child: Notifications(),
                                  type: PageTransitionType.bottomToTop));
                        });
                      },
                      child: Text(
                        arabicvalue == false ? 'Notifications' : 'إشعارات',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    arabicvalue == false ? 'Arabic' : 'عربي',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.language,
                    size: 50,
                    color: Colors.white,
                  ),
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: arabicvalue,
                      onChanged: (value) {
                        setState(() {
                          arabicvalue = value;
                          setlanguage();
                        });
                      }),
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 50,
                      color: Colors.white,
                    ),
                    /*Image.asset(
                      'assets/logout.png',
                      width: 50,
                      height: 50,
                    ),*/
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
                        arabicvalue == false ? 'Log Out' : 'تسجيل خروج',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xfffbcbc9),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          centerTitle: true,
          title: Text(
            arabicvalue == false ? 'Study Levels🤔' : 'مستويات الدراسة🤔',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                gradient: LinearGradient(
                    colors: [Color(0xff159957), Color(0xff155799)])),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  /*   Fluttertoast.showToast(
                      msg: "Your Name Is : ${SeriesState.str}",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0);*/
                  showAnimatedDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return ClassicGeneralDialogWidget(
                        titleText: arabicvalue == false ? 'Your Name' : 'اسمك',
                        contentText: arabicvalue == false
                            ? 'Your Name Is : ${SeriesState.str}'
                            : 'اسمك هو: ${SeriesState.str}',
                        positiveTextStyle:
                            TextStyle(color: Colors.green, fontSize: 20),
                        positiveText: arabicvalue == false ? 'OK' : 'نعم',
                        negativeText: '',
                        onPositiveClick: () {
                          Navigator.of(context).pop();
                        },
                        onNegativeClick: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                    animationType: DialogTransitionType.size,
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(seconds: 1),
                  );
                });
              },
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  SeriesState.str.substring(0, 1).toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: ColorLoad(),
                                  type: PageTransitionType.fade));
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/color-wheel.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblecolor2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Color2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/color2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblecolor2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblecolor3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Color3(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/color3.dart.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblecolor3,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfamily1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Family(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/family (1).png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfamily1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfamily2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Family2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/family2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfamily2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfamily3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Family1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/family3.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfamily3,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblemotions1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Emotions(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/emotions1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblemotions1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblemotions2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Emotions1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/emotions2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblemotions2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfruit1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Fruit1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/fruits1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfruit1,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfruit2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Fruit2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/fruits2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfruit2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfruit3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Fruit3(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/fruits3.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfruit3,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfruit4 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round4(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/fruits4.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfruit4,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibleat1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Eat1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/eat1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibleat1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibleat2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Eat2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/eat2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibleat2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isvisibleat2 == false) {
                            } else {
                              Image.asset('assets/levels/graduation-cap.png');
                            }
                          });
                        },
                        child: isvisibleat2 == true
                            ? CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                    'assets/levels/graduation-cap.png'),
                              )
                            : Container(
                                width: 50,
                                child: AnimatedTextKit(
                                    repeatForever: true,
                                    animatedTexts: [
                                      FadeAnimatedText('Very Good',
                                          textStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red)),
                                      FadeAnimatedText('Continue',
                                          textStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.greenAccent)),
                                      FadeAnimatedText('To Finish 😄',
                                          textStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue))
                                    ]),
                              )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblanima1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/animal1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblanima1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblanima2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Animal2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/animal2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblanima2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblanima3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Animal3(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/animal3.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblanima3,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblanima4 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Animal(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/bird.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblanima4,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblclothes1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Cloth1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/clothes1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblclothes1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblclothes2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Cloth2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: Container(
                        width: 80,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/levels/clothes2.png'),
                        ),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblclothes2,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblclothes3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Cloth3(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/clothes3.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblclothes3,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblclothes4 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round5(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/watch.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblclothes4,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblschool1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: School1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/school.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblschool1,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblschool2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: School2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/school1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblschool2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblschool3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round3(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/school3.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblschool3,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblschool4 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Hessab(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/shapes.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblschool4,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblschool5 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round9(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/math1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblschool5,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblschool6 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round10(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/math2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblschool6,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibltrrafic1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Traffic1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/traffic1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibltrrafic1,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibltrrafic2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Traffic2(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/trrafic2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibltrrafic2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibltrrafic3 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round13(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/trrafic3.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibltrrafic3,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblflags1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Nationality1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/flags.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblflags1,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblflags2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round6(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/flags2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblflags2,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibljob1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Job1(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/job1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibljob1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisibljob2 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round11(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/job2.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisibljob2,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblbody1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Round12(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/levels/body1.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblbody1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfootball == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Football(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/football-club.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfootball,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblsport == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Sports(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/basketball-player.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblsport,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfruitcrop1 == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: FruitCrop(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/fruitscrop.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfruitcrop1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblfootball == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Football(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/levels/football-club.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblfootball,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isvisiblsport == false) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Sports(),
                                    type: PageTransitionType.bottomToTop));
                          } else {
                            Fluttertoast.showToast(
                                msg: arabicvalue == false
                                    ? 'Finish Previous Level To Open This Level🧐'
                                    : 'إنهاء المستوى السابق لفتح هذا المستوى🧐',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/basketball-player.png'),
                      ),
                    ),
                    Visibility(
                      child: lockedicon,
                      visible: isvisiblsport,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

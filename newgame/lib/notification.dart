import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:page_transition/page_transition.dart';

import 'help.dart';

void main() {
  runApp(Notifications());
}

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationState();
  }
}

class NotificationState extends State<Notifications> {
  late FlutterLocalNotificationsPlugin flutternotification;
  @override
  void initState() {
    super.initState();
    var androidsettings = new AndroidInitializationSettings("ic_launcher");
    var iossettings = new IOSInitializationSettings();
    var initializesettings =
        new InitializationSettings(android: androidsettings, iOS: iossettings);
    flutternotification = new FlutterLocalNotificationsPlugin();
    flutternotification.initialize(
      initializesettings,
    );
  }

  Future shownotification() async {
    var androiddetails = new AndroidNotificationDetails(
        "Channel ID", "Desi programmer",
        importance: Importance.max);
    var iosDetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        new NotificationDetails(android: androiddetails, iOS: iosDetails);

    await flutternotification.show(
        0, "Task", "You created a Task", generalNotificationDetails,
        payload: "Task");
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
                                      child: Notifications(),
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
        backgroundColor: Colors.green,
        body: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: shownotification,
              child: Text(
                'Show Notifications',
                style: TextStyle(fontSize: 25, color: Colors.pink),
              ),
            ),
          ],
        ))),
      ),
    );
  }

  Future notificationselected(String paylod) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You did a good job'),
                SizedBox(
                  height: 10,
                ),
                Image.asset('good.png')
              ],
            )));
  }
}

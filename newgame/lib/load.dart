import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:page_transition/page_transition.dart';
import 'package:walidgame/secondload.dart';

import 'help.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Load());
}

class Load extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoadState();
  }
}

class LoadState extends State<Load> {
  /* AudioPlayer audioplayer1 = AudioPlayer();
  AudioCache audiocache = AudioCache();
  String pathback = "assets/backmusic.mp3";
  String pathload = "assets/musicload.mp3";
  String pathcorrect = "assets/audio/clap.mp3";
  String pathfail = "assets/fail.mp3";*/
  //var player = AudioCache();
  @override
  void initState() {
    super.initState();
    //player.play('assets/backmusic.mp3');
    //playmusic();
  }

  playmusic() async {
    //await audiocache.play(pathback);
  }

  pausemusic() async {
    //await audioplayer1.pause();
  }

  /*playload() async {
    await audiocache.play(pathload);
  }

  pauseload() async {
    await audioplayer2.pause();
  }

  playcorrect() async {
    await audiocache.play(pathcorrect);
  }

  pausecorrect() async {
    await audioplayer3.pause();
  }

  playfail() async {
    await audiocache.play(pathfail);
  }

  pausefail() async {
    await audioplayer4.pause();
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
                                      child: Load(),
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Game For Kids',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffC33764), Color(0xff1D2671)])),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/newimage/ki.jpg'),
                fit: BoxFit.fill)),
        child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    PageTransition(
                        child: SecondLoad(),
                        type: PageTransitionType.topToBottom));
                // pausemusic();
              });
            },
            icon: Icon(
              Icons.play_arrow,
              size: 50,
              color: Colors.pink,
            )),
      ),
    );
  }
}

//import 'dart:js';

//import 'package:device_preview/device_preview.dart';

//import 'package:newgame/load.dart';

//import 'package:newgame/nationality1.dart';
//import 'package:newgame/family2.dart';
//import 'package:newgame/fruit2.dart';

//import 'package:newgame/homepage.dart';
//import 'package:newgame/load.dart';
//import 'dart:ffi';

//import 'package:mygame/homepage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'load.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // builder: DevicePreview.appBuilder,
      home: Load(),
    );
  }
}

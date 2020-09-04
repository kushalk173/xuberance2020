/*
*  main.dart
*  Untitled — 23 August, 5.43.07 pm (1)
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/projects/xuberance2020/lib/EventDetails/EventDetails.dart';
import 'package:xuberance2020/EventsPage.dart';
import 'EventsPage.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return CupertinoApp(
      home: XuberanceHomePage(),
    );
  }
}
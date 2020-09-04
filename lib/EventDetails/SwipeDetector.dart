import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../EventsPage.dart';

class gDec extends StatelessWidget {
  final Widget child;

  const gDec({Key key, this.child}) : super(key: key);

  homePageDismissal(BuildContext context) {
    debugPrint("slided");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EventsHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: child,
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx > 0) {
            //  debugPrint("slided");
            homePageDismissal(context);
          }
        });
  }
}
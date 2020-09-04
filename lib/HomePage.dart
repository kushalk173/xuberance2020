import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_animations/simple_animations.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'EventsPage.dart';
import 'values/values.dart';

class XuberanceHomePage extends StatelessWidget {
  static const Color primaryBackground = Color.fromARGB(255, 247, 207, 186);

  void OnAboutUsClick(BuildContext context) {
    return null;
  }


  void OnSchoolsClick(BuildContext context) {
    return null;
  }

  void OnLiveUpdatesClick(BuildContext context) {
    return null;
  }

  void OnTeamClick(BuildContext context) {
    return null;
  }

  void OnSponsorsClick(BuildContext context) {
    return null;
  }

  void OnYourEventClick(BuildContext context) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              //background
              Positioned(
                left: -172,
                right: 0,
                child: Image.asset(
                  "assets/images/Home_BackGround.png",
                  fit: BoxFit.cover,
                ),
              ),
              //background filter
              Positioned(
                left: 0,
                right: 0,
                child: Opacity(
                  opacity: 0.25,
                  child: Container(
                    height: 1500,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBackground,
                      border: Border.fromBorderSide(Borders.secondaryBorder),
                    ),
                    child: Container(),
                  ),
                ),
              ),

// the main widget tree
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //xuberance TExt- wrapped in an auto size- gonna resize based on screen size
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 2,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AutoSizeText(
                            "Xuberance '20 ",
                            textAlign: TextAlign.center,
                            maxLines:1,
                            style: TextStyle(
fontFamily: 'atmosphere',
                              color: Colors.white,
                              fontSize: 64,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //the circles and the main design
                    Flexible(
                      fit: FlexFit.loose,
                      flex:10,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [

                          //Xuberance Bird
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Opacity(
                              opacity: 0.60,
                              child: Image.asset(
                                "assets/images/XuberanceBird.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: -250,
                            child: Center(
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Stack(
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        Container(
                                          width: 500,
                                          height: 500,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 10,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(250)),
                                          ),
                                        ),


                                        //schools
                                        Positioned(
                                          left: 275,
                                          bottom: 460,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => EventsHomePage()));}    ,
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "Events",
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //Team
                                        Positioned(
                                          left: 375,
                                          bottom: 405,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: () {
                                                  // ignore: unnecessary_statements
                                                },
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "Your Profile",
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //Live events
                                        Positioned(
                                          left: 440,
                                          bottom: 325,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: () {
                                                  // ignore: unnecessary_statements
                                                },
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "Live Updates",
                                                  maxLines: 2,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),


                                        //About us
                                        Positioned(
                                          left: 465,
                                          bottom: 230,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: () {
                                                  // ignore: unnecessary_statements
                                                },
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "About Us",
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //Sponsors
                                        Positioned(
                                          left: 445,
                                          bottom: 125,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: () {
                                                  // ignore: unnecessary_statements
                                                },
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "Sponsors",
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //Team
                                        Positioned(
                                          left: 380,
                                          bottom: 40,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: () {
                                                  // ignore: unnecessary_statements
                                                },
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "Team",
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //schools
                                        Positioned(
                                          left: 275,
                                          bottom: -15,
                                          child: Row(
                                            children: <Widget>[
                                              new GestureDetector(
                                                // ignore: unnecessary_statements
                                                onTap: () {
                                                  // ignore: unnecessary_statements
                                                },
                                                child: CircleAvatar(
                                                  radius: 32,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                    // backgroundColor: primaryBackground,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/Home_BackGround.png'),
                                                    radius: 30.0,
                                                    child: Image.asset(
                                                        "assets/images/iconPlaceHolder.png"),
                                                  ),
                                                ),
                                              ),
                                              new Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.0),
                                                child: AutoSizeText(
                                                  "Schools",
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xffD38312), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xffA83279), end: Colors.blue.shade600))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}
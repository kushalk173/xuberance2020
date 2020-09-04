import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:xuberance2020/EventsPage.dart';
import 'package:xuberance2020/values/colors.dart';

import '../AnimatedBackground.dart';
import 'SwipeDetector.dart';



class DetailHomePage extends StatelessWidget {
  final DocumentSnapshot documentSnapshot;

  const DetailHomePage({Key key, this.documentSnapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: DetailPage(
      post: documentSnapshot,
    ));
  }
}

class DetailPage extends StatefulWidget {
  final DocumentSnapshot post;

  const DetailPage({Key key, this.post}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Size displaySize(BuildContext context) {
  ////  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    ////debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    //debugPrint('Width = ' + displaySize(context).width.toString());
    return displaySize(context).width;
  }

  @override
  Widget build(BuildContext context) {
    String name = widget.post.data['name'] ;
    String startTime = widget.post.data['startTime'] ;
    String endTime = widget.post.data['endTime'] ;
    int day = widget.post.data['day'] + 8;
  //  String type = widget.post.data['type'] ;
    return SafeArea(
      child: Scaffold(
        body: gDec(
          child: Center(
            child: Stack(
              children: <Widget>[
                AnimatedBackground(),
                SafeArea(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: displayHeight(context) * 0.13,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                right: -80,
                                top: 4,
                                child: Container(
                                  width: displayWidth(context) + 30,
                                  height: displayHeight(context) * 0.12,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width:
                                              displayWidth(context) + 30 - 80,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Text(
                                                '$name',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontFamily: 'atmosphere',
                                                  fontSize:
                                                      (displayWidth(context) +
                                                              30 -
                                                              80) /
                                                          (name.length),
                                                  color:
                                                      const Color(0xff000000),
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    color: AppColors.Peach,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            //color: Colors.white,

                            height: displayHeight(context) * 0.62,
//                          width: displayHeight(context)*0.64,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  right: -80,
                                  top: 4,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: displayWidth(context) * 0.8 ,
                                        height: displayHeight(context) * 0.10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                width:
                                                displayWidth(context) + 30 - 80,
                                                child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      '$dayᵗʰ October',
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                       // fontFamily: 'atmosphere',
                                                        fontSize:32.0,
                                                        color:
                                                        const Color(0xff000000),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(80.0),
                                          color: AppColors.Peach,

                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8),
                                        child: Positioned(


                                          child: Container(
                                            width: displayWidth(context) * 0.6 ,
                                            height: displayHeight(context) * 0.10,
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Container(
                                                    width:
                                                    displayWidth(context) + 30 - 80,
                                                    child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: FittedBox(
                                                        fit: BoxFit.contain,
                                                        child: Text(
                                                          '$startTime - $endTime',
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            // fontFamily: 'atmosphere',
                                                            fontSize:20.0,
                                                            color:
                                                            const Color(0xff000000),
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(80.0),
                                              color: AppColors.Peach,

                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: -displayWidth(context) * 0.50,
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipOval(
                                          child: Container(
                                            height:
                                                displayHeight(context) * 0.60,
                                            width: displayWidth(context),
                                            child: FittedBox(
                                                fit: BoxFit.fill,
                                                child: Image.asset(
                                                    'assets/images/Home_BackGround.png')),
                                            decoration: BoxDecoration(
                                              // borderRadius: BorderRadius.circular(80.0),
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: -80,
                                  bottom: 16,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: displayWidth(context) * 0.6 ,
                                        height: displayHeight(context) * 0.10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                width:
                                                displayWidth(context) + 30 - 80,
                                                child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      'Rules',
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        // fontFamily: 'atmosphere',
                                                        fontSize:20.0,
                                                        color:
                                                        Colors.white,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(80.0),
                                          color: AppColors.Blue,

                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top:8),
                                        child:                                       Container(
                                          width: displayWidth(context) * 0.7,
                                          height: displayHeight(context) * 0.10,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  width:
                                                  displayWidth(context) + 30 - 80,
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: FittedBox(
                                                      fit: BoxFit.contain,
                                                      child: Text(
                                                        'Live Updates',
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          // fontFamily: 'atmosphere',
                                                          fontSize:20.0,
                                                          color:
                                                         Colors.white,
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(80.0),
                                            color: AppColors.Blue,

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: displayHeight(context) * 0.21,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  right: -50,
                                  bottom: 4,
                                  child: Container(
                                    width: displayWidth(context) + 30.0,
                                    height: displayHeight(context) * 0.21,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Container(
                                          width: 400.0 - 16.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                            color: Colors.transparent,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: AutoSizeText(
                                              'Lfivia fi ouvhf hfvok fvoifsdv sfv dhvsdf fnoid fous vdsv oshou ousgfhd ovousfnv ofgov ovugfsov jdspv ivmvhsovi ofsh vjnm vjspvisrij spiv pifvjs9vj ivsnvpm ifjvpm fhj pij bsbook. ',
                                              maxLines: 6,
                                              style: TextStyle(
                                                //fontFamily: 'Segoe UI',
                                                fontSize:
                                                    displayHeight(context) *
                                                        0.08,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(94.0),
                                      color: AppColors.Blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xuberance2020/AnimatedBackground.dart';
import 'package:xuberance2020/values/colors.dart';

import 'EventDetails/EventDetails.dart';

class EventsHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: ListPage());
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black, //                   <--- border color
      width: 1.0,
    ),
  );
}

class _ListPageState extends State<ListPage> {
  Future state;

  Future getEvents() async {
    var firestore = Firestore.instance;
    QuerySnapshot querySnapshot =
        await firestore.collection('event_schedule').getDocuments();
    return querySnapshot.documents;
  }

  @override
  void initState() {
    state = getEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            AnimatedBackground(),
            Center(
              child: FutureBuilder(
                  future: state,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator(
                        backgroundColor: AppColors.Blue,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.Peach),
                      ));
                    } else {
                      return Center(
                        child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: myBoxDecoration(),
                              child: ListTile(
                                  title: Text(snapshot.data[index].data['name']),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailHomePage(
                                                  documentSnapshot:
                                                      snapshot.data[index],
                                                )));
                                  }),
                            );
                          },
                        ),
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

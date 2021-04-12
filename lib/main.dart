import 'package:flutter/material.dart';
import 'package:study_room/screens/keyword_page.dart';
import 'package:study_room/screens/listoflesson.dart';
import 'package:study_room/screens/listofobject.dart';
import 'package:study_room/screens/login.dart';
import 'package:study_room/screens/my_course.dart';
import 'package:study_room/screens/video_page.dart';
import 'package:study_room/video_player.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Login(),
  title: 'Study Room',
  initialRoute:  Login.id,
  routes: {
    Login.id: (context) => Login(),
    MyCourse.id : (context) => MyCourse(),
    ListOfLesson.id : (context) => ListOfLesson(),
    ListOfObject.id : (context) => ListOfObject(),
    VideoPage.id : (context) => VideoPage(),
    VideoPlayer.id : (context) => VideoPlayer(),
    KeywordPage.id : (context) => KeywordPage(),
  }
));

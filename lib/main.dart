import 'package:flutter/material.dart';
import 'package:yuvano/views/screens/fivepage.dart';
import 'package:yuvano/views/screens/forthpage.dart';
import 'package:yuvano/views/screens/homepage.dart';
import 'package:yuvano/views/screens/secondpage.dart';
import 'package:yuvano/views/screens/sevenpage.dart';
import 'package:yuvano/views/screens/sixpage.dart';
import 'package:yuvano/views/screens/thirdpage.dart';




void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) =>  Home_Page(),
        'Second_Page': (context) =>  Second_Page(),
        'Third_Page': (context) =>  Third_Page(),
        'Forth_Page': (context) =>  Forth_Page(),
        'Five_Page': (context) =>  Five_Page(),
        'Six_Page': (context) =>  Six_Page(),
        'Seven_Page': (context) =>  Seven_Page(),
      },
    ),
  );
}
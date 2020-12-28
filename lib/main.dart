import 'package:flutter/material.dart';
import 'package:status_downloader/pages/homepage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _readPermissionCheck;
  bool _writePermissionCheck;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Status Downloader',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

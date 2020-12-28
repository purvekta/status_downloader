import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:status_downloader/include/myNavigationDrawer.dart';
import 'package:status_downloader/pages/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Status Downloader'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () async {
                var hasOpened = openAppSettings();
                debugPrint('appsettings opend');
              })
        ],
      ),
      drawer: Container(
        width: 200,
        child: Drawer(
          //elevation: 15,
          child: MyNavigationDrawer(),
        ),
      ),
      body: DashboardScreen(),
    );
  }
}

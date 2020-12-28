import 'package:flutter/material.dart';

class Photos extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Photo Status'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 60.0),
        child: Center(
          child: Text(
            "Install WhatsApp\nYour Friend's Status will be available here.",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}

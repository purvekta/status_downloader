import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class PermissionWidget extends StatefulWidget {
  final Permission _permission;
  const PermissionWidget(this._permission);

  @override
  _PermissionWidgetState createState() => _PermissionWidgetState(_permission);
}

class _PermissionWidgetState extends State<PermissionWidget> {
  final Permission _permission;
  _PermissionWidgetState(this._permission);
  PermissionStatus _permissionStatus = PermissionStatus.undetermined;

  @override
  void initState() {
    super.initState();
    _listenForPermissionStatus();
  }

  void _listenForPermissionStatus() async {
    final status = await _permission.status;
    setState(() => _permissionStatus = status);
  }

  Color getPermissionColor() {
    switch (_permissionStatus) {
      case PermissionStatus.denied:
        return Colors.red;
      case PermissionStatus.granted:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void checkServiceStatus(BuildContext context, Permission permission) async {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text((await permission.status).toString()),
    ));
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    setState(() {
      print(status);
      _permissionStatus = status;
      print(_permissionStatus);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class GetPermission extends StatefulWidget {
  @override
  _GetPermissionState createState() => _GetPermissionState();
}

class _GetPermissionState extends State<GetPermission> {
  var _status;
  @override
  void initState() {
    super.initState();
    // PermissionHandler()
    //     .checkPermissionStatus(PermissionGroup.locationWhenInUse)
    //     .then(_updateStatus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text('${_status}'),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: null,
            child: Text("Ask Permission"),
          )
        ],
      )),
    );
  }

  // void _askPermission() {
  //   PermissionHandler().requestPermissions(
  //       [PermissionGroup.locationWhenInUse]).then(_statusOnRequested);
  // }

  void _updateStatus(PermissionStatus status) {
    if (status != _status) {
      setState(() {
        _status = status;
      });
    }
    // if(status !=PermissionStatus.granted)
    // {
    //   _askPermission();
    // }
    // }

    // _statusOnRequested(Map<PermissionGroup, PermissionStatus> value) {
    //   final status = value[PermissionGroup.locationWhenInUse];
    //   _updateStatus(status!);
    // }
  }
}
// class PermissionHandler {
// }

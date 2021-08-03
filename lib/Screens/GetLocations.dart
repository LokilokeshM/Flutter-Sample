import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class GetLocations extends StatefulWidget {
  @override
  _GetLocationsState createState() => _GetLocationsState();
}

class _GetLocationsState extends State<GetLocations> {
  var locationMessage = '';
  void currentLocations() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    // var lastPosition = await Geolocator.getLastKnownPosition();
    print(position);
    setState(() {
      locationMessage = "$position";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("currentLocations")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(locationMessage),
          SizedBox(
            height: 82,
          ),
          Container(
            child: RaisedButton(
              onPressed: currentLocations,
              child: Text("click"),
            ),
          )
        ],
      ),
    );
  }
}

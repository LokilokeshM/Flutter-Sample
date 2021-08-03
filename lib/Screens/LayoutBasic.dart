import 'package:flutter/material.dart';

class LayoutBasic extends StatefulWidget {
  @override
  _LayoutBasicState createState() => _LayoutBasicState();
}

class _LayoutBasicState extends State<LayoutBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Center(
          child: Text("first Box"),
        ),
      ),
      Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Center(
          child: Text("Second Box"),
        ),
      ),
      Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Center(
          child: Text("Third Box"),
        ),
      )
    ]));
  }
}

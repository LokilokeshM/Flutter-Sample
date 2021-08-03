// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'ThirdScreen.dart';

class DummyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy Screeen Welcomes Youuuuu'),
      ),
      body: Container(
        child: Row(
          children: [
            RaisedButton(
              child: Text("Click"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}

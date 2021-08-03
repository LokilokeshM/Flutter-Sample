import 'package:flutter/material.dart';

import 'ListUser.dart';

class Display extends StatelessWidget {
  final User user;
  Display(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details')),
      ),
      body: Container(
        child: Row(
          children: [Text(user.title)],
        ),
      ),
    );
  }
}

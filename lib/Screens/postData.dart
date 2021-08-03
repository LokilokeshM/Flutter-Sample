import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
// import 'package:geolocator/geolocator.dart';
import 'Model/userModel.dart';

String url = "https://reqres.in/api/users";
Future<UserModel> _postUser(String name, String jobTitle) async {
  var response =
      await http.post(Uri.parse(url), body: {"name": name, "job": jobTitle});
  if (response.statusCode == 201) {
    final String responseString = response.body;
    print(userModelFromJson(responseString).name);
    return userModelFromJson(responseString);
  } else {
    return null;
  }
  //var locations = '';
  // void _getLocations() async {
  //   var position = await Geolocator()
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //   var lastPosition = await Geolocator().getLastKnownPosition();
  //   print(lastPosition);
  //   setState(() {
  //     locations =
  //         "Lattitude:$position.latitude \n Longitude: $position.longitude";
  //   });
  // }
}

class PostData extends StatefulWidget {
  @override
  _PostDataState createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  var _user;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Post Data")),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
            ),
            TextField(
              controller: jobController,
            ),
            SizedBox(height: 32.0),
            _user == null
                ? Container()
                : Text(
                    "Job : ${_user.job} \n Name: ${_user.name} \n createdAt:${_user.createdAt.toIso8601String()}"),
            // Text(locations),
            // //ignore: deprecated_member_use
            // RaisedButton(
            //   onPressed: _getLocations,
            //   child: Text("Get Locations"),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String name = nameController.text;
          final String jobTitle = jobController.text;

          final UserModel user = await _postUser(name, jobTitle);

          setState(() {
            _user = user;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

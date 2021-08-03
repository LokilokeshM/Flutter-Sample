import 'package:flutter/material.dart';
import 'Display.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

String url = "https://jsonplaceholder.typicode.com/posts";

Future<List<User>> _getUsers() async {
  var data = await http.get(Uri.parse(url));
  var jsonData = json.decode(data.body);

  List<User> users = [];

  for (var u in jsonData) {
    User user = User(u['id'], u['userId'], u['body'], u['title']);
    users.add(user);
  }

  print(users.length);
  return users;
}

class ListUser extends StatefulWidget {
  @override
  _ListUserState createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("List User")),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Loading....."),
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index].title,
                          style: TextStyle(fontSize: 20)),
                      subtitle: Text(
                        snapshot.data[index].body,
                        style: TextStyle(fontSize: 10),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Display(snapshot.data[index])));
                      },
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}

class User {
  int userId = 0;
  int id = 0;
  String title = '';
  String body = '';

  User(this.id, this.userId, this.body, this.title);
}

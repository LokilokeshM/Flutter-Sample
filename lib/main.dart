// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './Constants.dart';

import 'DesigningScreen.dart/Home_Screen.dart';
import 'Screens/qustions.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sample Demo",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_ is done for the private properties of a particular page
class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  void _answerForQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What is your Favourite Color',
        'answers': ['red', 'blue', 'green', 'orange']
      },
      {
        'questionText': 'What is your Favourite Animal',
        'answers': ['a', 'b', 'c', 'd']
      },
      {
        'questionText': 'What is your Favourite demo',
        'answers': ['x', 'y', 'z', 'xxx']
      }
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello Guys"),
            ),
            body: Column(
              children: [
                Questions(questions[_questionsIndex]['questionText']),
                RaisedButton(
                    child: Text("Answer 1"), onPressed: _answerForQuestions),
                RaisedButton(
                    child: Text("Answer 2"), onPressed: _answerForQuestions),
                RaisedButton(
                    child: Text("Answer 3"), onPressed: _answerForQuestions),
                ...(questions[_questionsIndex]['answers'] as List<String>)
                    .map((answer) {
                  return RaisedButton(
                    onPressed: _answerForQuestions,
                    child: Text(answer),
                  );
                }).toList()
              ],
            )));
  }
}

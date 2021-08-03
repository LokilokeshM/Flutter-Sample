// import 'dart:async';

// import 'package:flutter/material.dart';

// class StreamsDemo extends StatefulWidget {
//   const StreamsDemo({Key? key}) : super(key: key);

//   @override
//   _StreamsDemoState createState() => _StreamsDemoState();
// }

// class _StreamsDemoState extends State<StreamsDemo> {
//   StreamController<dynamic> _streamController = StreamController();
//   late StreamSubscription<dynamic> streamSubscription;

//   addData() async {
//     for (int i = 1; i <= 10; i++) {
//       await Future.delayed(Duration(seconds: 1));
//       _streamController.sink.add(i);
//     }
//   }

//   Stream<int> _numberStream() async* {
//     for (int i = 1; i <= 10; i++) {
//       await Future.delayed(Duration(seconds: 1));
//       yield i;
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _streamController.close();
//   }

//   @override
//   void initState() {
//     super.initState();
//     addData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child: Text("Streams Demo"),
//           ),
//         ),
//         body: Center(
//           child: StreamBuilder(
//             stream: _numberStream(),
//             builder: (context, snapshot) {
//               if (snapshot.hasError)
//                 return Text("There is some error  ");
//               else if (snapshot.connectionState == ConnectionState.waiting)
//                 return CircularProgressIndicator();
//               return Text(
//                 "Data is ==>${snapshot.data}",
//                 style: Theme.of(context).textTheme.display1,
//               );
//             },
//           ),
//         )
//         // Center(
//         //   child: Row(
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: [
//         //       MaterialButton(
//         //           color: Colors.blue[400],
//         //           child: Text("subscribe"),
//         //           onPressed: () {
//         //             // Stream stream = controller.stream;
//         //             // streamSubscription = stream.listen((event) {
//         //             //   print("Summaaa Data");
//         //             // });
//         //           }),
//         //       MaterialButton(
//         //         onPressed: () {
//         //           // controller.add(12);
//         //         },
//         //         child: Text("add Data"),
//         //         color: Colors.yellow,
//         //       ),
//         //       MaterialButton(
//         //           color: Colors.green,
//         //           child: Text("Unsuscribe"),
//         //           onPressed: () {
//         //             //  streamSubscription.cancel();
//         //           })
//         //     ],
//         //   ),
//         // ),
//         );
//   }
// }

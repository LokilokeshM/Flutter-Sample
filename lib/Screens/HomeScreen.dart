import 'package:flutter/material.dart';
import 'DummyScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, right: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: null,
                    color: Colors.white,
                    icon: Icon(Icons.arrow_back_ios)),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DummyScreen()));
                          },
                          color: Colors.white,
                          icon: Icon(Icons.filter_list)),
                      IconButton(
                          onPressed: null,
                          color: Colors.white,
                          icon: Icon(Icons.menu))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 100.0),
              child: Row(
                children: [
                  Text(
                    'SRM',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Programing',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          SizedBox(height: 40),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(75.0))),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(
                          children: [
                            _buildFoodItems("a", 'Biriyani', "\$100"),
                            _buildFoodItems("a", 'Biriyani', "\$100"),
                            _buildFoodItems("a", 'Biriyani', "\$100")
                          ],
                        ))),
                Padding(
                  padding: EdgeInsets.only(bottom: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60.0,
                        width: 65.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                            child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                      ),
                      Container(
                        height: 60.0,
                        width: 65.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                            child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DummyScreen()));
                          },
                          icon: Icon(Icons.shop),
                          color: Colors.grey,
                        )),
                      ),
                      Container(
                        height: 60.0,
                        width: 65.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildFoodItems(String imgPath, String foodName, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("imgae"),
                SizedBox(width: 40.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(foodName,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                    Text(price,
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.grey,
                            fontFamily: 'Montserrat'))
                  ],
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Colors.black,
          )
        ],
      ),
    ),
  );
}

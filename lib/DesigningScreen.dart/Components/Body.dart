import 'package:flutter/material.dart';
import 'package:flutter_demo/Constants.dart';
import 'package:flutter_demo/DesigningScreen.dart/Components/Categories.dart';
import 'package:flutter_demo/Details/Components/DetailScreen.dart';
import 'package:flutter_demo/Model/Product.dart';

import 'ItemCard.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text('Sample',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Categories(),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.75),
                  itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      product: products[index],
                                    ))),
                      )))
          // ItemCard()
        ],
      ),
    );
  }
}

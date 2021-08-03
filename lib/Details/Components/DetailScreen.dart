import 'package:flutter/material.dart';
import 'package:flutter_demo/Details/Components/Body.dart';
import 'package:flutter_demo/Model/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/cart.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: kTextColor,
              )),
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}

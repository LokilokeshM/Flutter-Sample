import 'package:flutter/material.dart';

class Product {
  String image, title, description;
  int price, size, id;
  Color color;

  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/bag_1.png",
      title: 'Office Code',
      price: 243,
      description: "Dummy Text",
      size: 12,
      color: Color(0xFFEF5350)),
  Product(
      id: 2,
      image: "assets/images/bag_2.png",
      title: 'Office Code',
      price: 243,
      description: "Dummy Text",
      size: 12,
      color: Color(0xFFEF5350)),
  Product(
      id: 3,
      image: "assets/images/bag_3.png",
      title: 'Office Code',
      price: 243,
      description: "Dummy Text",
      size: 12,
      color: Color(0xFFEF5350)),
  Product(
      id: 4,
      image: "assets/images/bag_4.png",
      title: 'Office Code',
      price: 243,
      description: "Dummy Text",
      size: 12,
      color: Color(0xFFEF5350)),
  Product(
      id: 5,
      image: "assets/images/bag_5.png",
      title: 'Office Code',
      price: 243,
      description: "Dummy Text",
      size: 12,
      color: Color(0xFFEF5350)),
  Product(
      id: 6,
      image: "assets/images/bag_6.png",
      title: 'Office Code',
      price: 243,
      description: "Dummy Text",
      size: 12,
      color: Color(0xFFEF5350)),
];

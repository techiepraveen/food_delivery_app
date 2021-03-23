import 'package:flutter/material.dart';

class Categories {
  final String imgpath;
  //final String image;
  final String foodname;
  final String foodtitle;
  final String fooddesc;
  final String ratings;
  final String price;

  Categories({
    @required this.imgpath,
    @required this.price,
    @required this.foodname,
    @required this.fooddesc,
    @required this.foodtitle,
    @required this.ratings,
  });
}

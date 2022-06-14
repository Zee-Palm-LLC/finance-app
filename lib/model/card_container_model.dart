import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/constants.dart';

class CartContainer {
  final String idname;
  final int idnum;
  final Color colour;
  CartContainer({
    required this.colour,
    required this.idname,
    required this.idnum,
  });
}

List<CartContainer> cartContainer = [
  CartContainer(idname: "Tanzeel", idnum: 23456789, colour: kblue),
  CartContainer(idname: "Aslam", idnum: 23891234, colour: kpink),
  CartContainer(idname: "Jameel", idnum: 23944124, colour: kbarblue),
  CartContainer(idname: "Aqib", idnum: 98012345, colour: Colors.amber),
];

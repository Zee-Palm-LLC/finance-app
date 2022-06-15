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
  CartContainer(idname: "Chris", idnum: 23456789, colour: kblue),
  CartContainer(idname: "Jack", idnum: 23891234, colour: kpink),
  CartContainer(idname: "John", idnum: 23944124, colour: kbarblue),
  CartContainer(idname: "Micheal", idnum: 98012345, colour: Colors.amber),
];

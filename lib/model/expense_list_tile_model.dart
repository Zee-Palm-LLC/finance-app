import 'package:flutter/material.dart';

class ExpenseListData {
  ExpenseListData(this.expensetitle, this.cash, this.date, this.icon);
  final String expensetitle;
  final double cash;
  final String date;
  final IconData icon;
}

List<ExpenseListData> listdata = [
  ExpenseListData("Spotify", 12.01, "Sat, 23 May", Icons.music_note_outlined),
  ExpenseListData("Grocery", 15.01, "Sun, 24 May", Icons.food_bank_sharp),
  ExpenseListData("Food", 16.35, "Mon, 25 May", Icons.local_pizza),
  ExpenseListData("Shopping", 23.35, "Mon, 25 May", Icons.shopping_bag),
  ExpenseListData("Fuel", 10.01, "Sun, 27 May", Icons.liquor_outlined),
];

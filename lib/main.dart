import 'package:coffee_shop_ui/ui/CoffeeHome.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CoffeShop App",
      debugShowCheckedModeBanner: false,
      home: CoffeeHome(),
    );
  }
}

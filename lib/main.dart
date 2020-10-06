import 'package:flutter/material.dart';
import 'package:flutter_shoppingapp/Views/shopping.dart';


void main()=> runApp(Shopping());

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("OPERATIONS")),
        ),

        body: Container(
          child:
          Center(child: Text("Choose your operations...")),
        ),
      ),
    );
  }
}
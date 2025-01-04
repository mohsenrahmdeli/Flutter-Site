import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Skill
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}

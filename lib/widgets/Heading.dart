import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bounce",
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontFamily: "Barriecito-Regular"),
          ),
          Text(
            "Widget",
            style: TextStyle(
                fontSize: 78,
                color: Colors.black,
                fontFamily: "Barriecito-Regular"),
          ),
        ],
      ),
    );
  }
}

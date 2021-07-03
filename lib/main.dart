import 'package:flutter/material.dart';
import 'package:flutter_bounce_widget/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bounce Widget',
      home: HomeScreen(),
    );
  }
}

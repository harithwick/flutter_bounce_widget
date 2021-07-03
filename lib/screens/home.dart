import 'package:flutter/material.dart';
import 'package:flutter_bounce_widget/widgets/bounce_widget.dart';
import 'package:flutter_bounce_widget/widgets/Heading.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animController;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      reverseDuration: Duration(milliseconds: 700),
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    animation = Tween<double>(
      begin: 0.9,
      end: 1.05,
    ).animate(animController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animController.forward();
        }
      });
    animController.forward();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading(),
            SizedBox(height: 30),
            BounceWidget(animation: animation),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

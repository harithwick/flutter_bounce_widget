import 'package:flutter/material.dart';

class BounceWidget extends StatelessWidget {
  const BounceWidget({
    Key? key,
    required this.animation,
  }) : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: animation.value,
        child: TextButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/food.png',
              width: 320,
            )),
      ),
    );
  }
}

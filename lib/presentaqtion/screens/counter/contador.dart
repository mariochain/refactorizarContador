import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  final int clickCounter;

  const Contador({
    super.key,
    required this.clickCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$clickCounter',
          style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
        ),
        Text(
          clickCounter != 1 ? 'Clicks' : 'Click',
          style: const TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}

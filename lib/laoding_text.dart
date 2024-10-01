import 'dart:async';

import 'package:flutter/material.dart';

class LaodingText extends StatefulWidget {
  const LaodingText({super.key});

  @override
  State<LaodingText> createState() => _LaodingTextState();
}

class _LaodingTextState extends State<LaodingText> {
  late Timer _timer;
  int doutCount = 0;

  @override
  void initState() {
    // TODO: implement initState
    _timer = Timer.periodic(const Duration(milliseconds: 500), (callback) {
      setState(() {
        doutCount = (++doutCount == 4) ? 0 : doutCount;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Loading",
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          width: 30,
          child: Text(
            '.' * doutCount,
            style: const TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}

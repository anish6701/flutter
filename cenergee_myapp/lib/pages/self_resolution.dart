import 'package:flutter/material.dart';

class SelfResolution extends StatelessWidget {
  const SelfResolution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "myApp",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Self Resolution"),
        ),
      ),
    );
  }
}

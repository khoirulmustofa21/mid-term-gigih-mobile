import 'package:flutter/material.dart';

Widget homeview() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [Text("Home", style: TextStyle(color: Colors.amber))],
        ),
      ),
    ),
  );
}

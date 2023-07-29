import 'package:flutter/material.dart';

Widget playview() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [Text("Play", style: TextStyle(color: Colors.amber))],
        ),
      ),
    ),
  );
}

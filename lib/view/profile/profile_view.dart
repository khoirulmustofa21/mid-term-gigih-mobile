import 'package:flutter/material.dart';

Widget profileview() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Text(
              "Profile",
              style: TextStyle(color: Colors.amber),
            )
          ],
        ),
      ),
    ),
  );
}

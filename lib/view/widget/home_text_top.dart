import 'package:flutter/material.dart';

Widget homeTextTop() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25, top: 20),
    child: RichText(
      text: TextSpan(
        text: "Stream ",
        style: TextStyle(
          color: Colors.orange[800],
          fontSize: 24,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'Everywhere',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    ),
  );
}

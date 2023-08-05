import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/view/leanding/landing_page_view.dart';

void main() {
  runApp(const MyBottomNavigationBar());
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0x0015141F),
          canvasColor: const Color(0x0015141F)),
      home: const LandingPage(),
    );
  }
}

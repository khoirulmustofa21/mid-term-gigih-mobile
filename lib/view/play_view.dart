import 'package:flutter/material.dart';
import 'package:mobile/controller/play_view_controller.dart';

PlayViewController c = PlayViewController();
Widget playview(context) {
  List<String> category = [
    'Movies',
    'Tv Series',
    'Documentary',
    'Sports',
    'Games',
    'Competitions'
  ];
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding:
            const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find Movies, Tv Series, \nand more..",
              maxLines: 2,
              softWrap: true,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 24,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
                cursorHeight: 25,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  hintText: 'Sharelock Holmes',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.2),
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.6),
                  ),
                  fillColor: const Color(0xFF211F30),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  category
                      .length, // Ganti dengan jumlah kategori yang diinginkan
                  (index) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        c.setindex(index);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 25),
                            child: Text(
                              category[
                                  index], // Ganti dengan teks kategori yang sesuai
                              style: TextStyle(
                                color: c.selectIndex.value == index
                                    ? const Color(0xffFF8F71)
                                    : Colors.white.withOpacity(0.7),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: 10 * 2,
                            padding: const EdgeInsets.only(top: 10),
                            margin: const EdgeInsets.only(right: 25),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: c.selectIndex.value == index
                                      ? Colors.red
                                      : Colors
                                          .transparent, // Set underline color
                                  width: c.selectIndex.value == index
                                      ? 2
                                      : 0, // Set underline thickness
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

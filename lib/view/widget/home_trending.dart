import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget homeTrending(List<String> imgList) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Trending",
          style: TextStyle(color: Colors.white, fontSize: 24, letterSpacing: 1),
        ),
        const SizedBox(height: 25),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2 / 2,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          scale: 0.8,
                          image: AssetImage(
                            item,
                          ),
                        )),
                    margin: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 15,
                          right: 15,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: Container(
                                width: 77,
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(26, 197, 197, 197)
                                      .withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "7.0",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            letterSpacing: 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 15,
                          left: 15,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: Container(
                                width: double.infinity,
                                height: 76,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(26, 197, 197, 197)
                                      .withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: Center(
                                      child: Text(
                                        "Star Wars: The Last Jedi ",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ],
    ),
  );
}

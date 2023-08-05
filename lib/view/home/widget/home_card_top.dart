import 'dart:ui';

import 'package:flutter/material.dart';

Widget homeCardTop(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 192,
    decoration: BoxDecoration(
      image: const DecorationImage(
          image: AssetImage("assets/images/thumbnail.png"), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 6),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 62,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(26, 197, 197, 197)
                        .withOpacity(0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Image.asset(
                          "assets/icons/Play2.png",
                          width: 40,
                          height: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Continue Watching",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              "Ready Player one",
                              style: TextStyle(
                                wordSpacing: 1,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.8),
                              ),
                              softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

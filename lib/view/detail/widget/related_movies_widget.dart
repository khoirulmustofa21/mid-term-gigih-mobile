import 'package:flutter/material.dart';

Widget relatedMoviesWidget(context, img) {
  return Padding(
    padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
    child: SizedBox(
      height: 146,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              padding: const EdgeInsets.only(right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 142,
                    height: 106,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            img,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  SizedBox(
                    width: 135,
                    child: Text(
                      maxLines: 2,
                      softWrap: true,
                      "Star wars; the force awakens (2015)",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}

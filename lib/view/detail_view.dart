import 'dart:ui';

import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  DetailView({super.key, required this.img});
  final String img;

  final List<String> actions = [
    'Action',
    'Sci-Fi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: InkWell(
                        onTap: () => print("ini data dari "),
                        child: Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.3),
                          ),
                          child: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 12, top: 9),
                              child: Image.asset('assets/icons/play_now.png')),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Text(
                "Star Wars: The Last Jedi",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white, fontSize: 24, letterSpacing: 0.6),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    size: 16,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  Text(
                    " 152 minutes",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 16,
                        letterSpacing: 0.6),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.white.withOpacity(0.7),
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "7.0 (IMDb)",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Divider(
                color: Colors.white.withOpacity(0.1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 104,
                    height: 46,
                    child: Column(
                      children: [
                        const Text(
                          "Release date",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 0.6),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Text(
                          "December 9,2017",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " Genre",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 0.6),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            alignment: WrapAlignment.start,
                            children: actions.map((e) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.7),
                                        offset: const Offset(0.8, 0))
                                  ],
                                  color: const Color(0xff201f27),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 12),
                                ),
                              );
                            }).toList()),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Divider(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Expanded(
                    child: Text(
                  "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn Read more..",
                  style: TextStyle(color: Colors.white),
                ))),
          ],
        ),
      ),
    );
  }
}

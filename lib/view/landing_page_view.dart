import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/controller/landing_page_controller.dart';
import 'package:mobile/view/home_view.dart';
import 'package:mobile/view/play_view.dart';
import 'package:mobile/view/profile_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(
      () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
          decoration: const BoxDecoration(color: Color(0x0015141F)),
          height: 90,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Obx(
                  () => Image.asset(
                    landingPageController.tabIndex.value == 0
                        ? "assets/icons/home2.png"
                        : "assets/icons/home1.png",
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                label: 'Home',
                // backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Obx(
                  () => Image.asset(
                    landingPageController.tabIndex.value == 1
                        ? "assets/icons/Play2.png"
                        : "assets/icons/Play1.png",
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                label: 'Play',
                // backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Obx(
                  () => landingPageController.tabIndex.value == 2
                      ? Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/icons/person2.png",
                              ),
                            ),
                          ),
                        )
                      : Image.asset(
                          "assets/icons/person1.png",
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                ),
                label: 'Profile',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            buildBottomNavigationMenu(context, landingPageController),
        body: Obx(
          () => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              homeview(context),
              playview(context),
              profileview(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../tv/views/tv_screen.dart';
import '../home/views/home_screen.dart';
import '../search/views/search_screen.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomeScreen(),
            SearchScreen(),
            TVScreen(),
            Center(
                child: Icon(
              Icons.person,
              size: 50,
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 24,
          currentIndex: controller.tabIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: const Color.fromRGBO(209, 209, 209, 1),
          onTap: controller.changeTabIndex,
          backgroundColor: const Color.fromARGB(255, 16, 15, 20),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv_outlined),
              label: 'TV Show',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}

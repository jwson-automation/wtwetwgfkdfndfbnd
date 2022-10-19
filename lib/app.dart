import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/bottom_nav_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/2_coupang.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/1_first_page.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/4_mypage.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/3_history.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/5_upload.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          // backgroundColor: Colors.black,

          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              FirstPage(),
              CoupangPage(),
              Container(
                color: Colors.white,
              ),
              HistoryPage(),
              MyPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  activeIcon: Icon(Icons.circle_rounded),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  activeIcon: Icon(Icons.circle_rounded),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  activeIcon: Icon(Icons.circle_rounded),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  activeIcon: Icon(Icons.circle_rounded),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  activeIcon: Icon(Icons.circle_rounded),
                  label: 'home'),
            ],

            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
        ));
  }
}

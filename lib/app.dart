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
            backgroundColor: Colors.grey[700],
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_outlined),
                  activeIcon: Icon(Icons.list_alt),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.microwave_outlined),
                  activeIcon: Icon(Icons.microwave),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.upload_outlined),
                  activeIcon: Icon(Icons.upload),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history_outlined),
                  activeIcon: Icon(Icons.history),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  activeIcon: Icon(Icons.person),
                  label: 'home'),
            ],

            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wtwetwgfkdfndfbnd/src/components/Live_notice.dart';
import 'package:wtwetwgfkdfndfbnd/src/controller/bottom_nav_controller.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/notice_scroll.dart';
import 'package:wtwetwgfkdfndfbnd/src/pages/thred.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Icon(Icons.circle_outlined),
                SizedBox(width: 10),
                Text('오운완')
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            // centerTitle: mounted,
          ),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              FirstPage(),
              Container(
                child: Center(
                  child: Text(
                    'search',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'upload',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'activity',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'mypage',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
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

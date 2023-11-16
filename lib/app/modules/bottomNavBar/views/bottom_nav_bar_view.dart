import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/bottom_nav_bar_controller.dart';

class BottomNavBarView extends GetView<BottomNavBarController> {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavBarController());
    return Obx(() {
      return Scaffold(
        body: Center(
          child: BottomNavBarController.widgetOptions
              .elementAt(controller.selectedIndex.value),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_filled_sharp),
                label: 'Cars',
                backgroundColor: Color(0xFFFDEBC9)),
            BottomNavigationBarItem(
                icon: Icon(Icons.fire_truck_outlined),
                label: 'Big Cars',
                backgroundColor: Color(0xFFFDEBC9)),
            BottomNavigationBarItem(
                icon: Icon(Icons.electric_bike_outlined),
                label: 'Bikes',
                backgroundColor: Color(0xFFFDEBC9)),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: controller.selectedIndex.value,
          selectedFontSize: 15.sp,
          selectedItemColor: Colors.black,
          iconSize: 20.sp,
          onTap: controller.onItemTapped,
          elevation: 5,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontSize: 12.sp),
          unselectedLabelStyle: TextStyle(fontSize: 12.sp),
        ),
      );
    });
  }
}

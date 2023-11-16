import 'package:car_rental_app/app/modules/bike/views/bike_view.dart';
import 'package:car_rental_app/app/modules/car/views/car_view.dart';
import 'package:car_rental_app/app/modules/main/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  final selectedIndex = 0.obs;
  static const List<Widget> widgetOptions = [
    MainView(),
    CarView(),
    BikeView()
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

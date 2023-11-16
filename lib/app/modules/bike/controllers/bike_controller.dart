import 'dart:ui';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../data/base_model/car_data.dart';

class BikeController extends GetxController {
  //TODO: Implement BikeController

  final List<CarData> bikeLIst = [
    CarData(
        "Vespa", "\$23/day", const Color(0xFFD7913F), "assets/images/r.png"),
    CarData(
      "Electric Bike",
      "\$10/day",
      const Color(0xFFDF7588),
      "assets/images/s1.png",
    ),
    CarData("Delivery Bike", "\$11/day", const Color(0xFF60C1DC),
        "assets/images/s2.png"),
    CarData(
        "Scooter", "\$14/day", const Color(0xFF6C6363), "assets/images/s3.png"),
  ];

  final count = 0.obs;

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

  void increment() => count.value++;

  void goToBike() => Get.toNamed(Routes.VASPA_DETAILS);

  void goToClassicCarDetails() => Get.toNamed(Routes.BOTTOM_NAV_BAR);
}

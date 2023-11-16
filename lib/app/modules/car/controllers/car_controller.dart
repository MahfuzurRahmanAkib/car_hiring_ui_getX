import 'dart:ui';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../data/base_model/car_data.dart';

class CarController extends GetxController {
  final List<CarData> bigCarList = [
    CarData("Motorhome", "\$23/day", const Color(0xFF7EB0AA),
        "assets/images/b.png"),
    CarData(
      "Pickup",
      "\$10/day",
      const Color(0xFFAD8E73),
      "assets/images/a.png",
    ),
    CarData(
        "Airplane", "\$11/day", const Color(0xFFA34D48), "assets/images/c.png"),
    CarData("Bus", "\$14/day", const Color(0xFFE4C970), "assets/images/ty.png"),
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

  void goToClassicCarDetails() => Get.toNamed(Routes.CLASSIC_CAR_DETAILS);
}

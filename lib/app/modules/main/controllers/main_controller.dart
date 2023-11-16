import 'dart:ui';

import 'package:get/get.dart';

import '../../../data/base_model/car_data.dart';
import '../../../routes/app_pages.dart';

class MainController extends GetxController {

  final List<CarData> carList = [
    CarData("Classic Car", "\$34/day", const Color(0xFFB67853),
        "assets/images/medV.png"),
    CarData("Sport Car", "\$55/day", const Color(0xFF60B5F4),
        "assets/images/sps.png",),
    CarData("Flying Car", "\$500/day", const Color(0xFF8382C2),
        "assets/images/flying.png"),
    CarData("Electric Car", "\$45/day", const Color(0xFF2A3640),
        "assets/images/medV.png"),
  ];

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

  void goToClassicCarDetails() => Get.toNamed(Routes.CLASSIC_CAR_DETAILS);

  void goToCars() => Get.toNamed(Routes.CAR);
}

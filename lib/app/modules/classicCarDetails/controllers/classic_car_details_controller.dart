import 'dart:ui';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../data/base_model/car_detail_data.dart';

class ClassicCarDetailsController extends GetxController {
  final List<CarDetails> carList = [
    CarDetails(
      title: "Classic Car",
      subTitle: "\$34/day",
      link: "assets/images/medV.png",
      description: "Description",
      details: 'Wanna ride the coolest sport car in the world?',
      listColor: const Color(0xFFD6913F),
    ),
    CarDetails(
      title: "Sport Car",
      subTitle: "\$55/day",
      link: "assets/images/sps.png",
      description: "Description",
      details: 'Wanna ride the coolest sport car in the world?',
      listColor: const Color(0xFF60B5F4),
    ),
    CarDetails(
      title: "Flying Car",
      subTitle: "\$500/day",
      link: "assets/images/flying.png",
      description: "Description",
      details: 'Wanna ride the coolest sport car in the world?',
      listColor: const Color(0xFF8382C2),
    ),
    CarDetails(
      title: "Electric Car",
      subTitle: "\$45/day",
      link: "assets/images/medV.png",
      description: "Description",
      details: 'Wanna ride the coolest sport car in the world?',
      listColor: const Color(0xFF2A3640),
    ),
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

  void goToBottomBar() => Get.toNamed(Routes.BOTTOM_NAV_BAR);
}

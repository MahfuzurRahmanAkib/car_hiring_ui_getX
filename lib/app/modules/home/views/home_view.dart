import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/widgets/on_boarding_card.dart';
import '../../classicCarDetails/controllers/classic_car_details_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  /// For Making On Boarding page

  @override
  Widget build(BuildContext context) {
    Get.put(ClassicCarDetailsController());
    return PageView.builder(
      itemCount: controller.onboardingItems.length,
      itemBuilder: (context, index) {
        var items = controller.onboardingItems[index];
        return OnBoarding(
          link: items.imagePath,
          title: items.title,
          description: items.description,
        );
      },
    );
  }
}



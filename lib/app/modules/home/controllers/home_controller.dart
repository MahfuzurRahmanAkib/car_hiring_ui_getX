import 'package:get/get.dart';

import '../../../data/base_model/on_boarding_data.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      imagePath: "assets/images/drifting.png",
      title: "Find Your Vehicle",
      description: "Find the perfect vehicle for every occasion!",
    ),
    OnboardingItem(
      imagePath: "assets/images/sightseeing.png",
      title: "Your Dream Car",
      description: "Rent the car you are always wanted to drive",
    ),
    OnboardingItem(
      imagePath: "assets/images/delivery.png",
      title: "Small Ones Too!",
      description: "Rent a small vehicle for those short distances",
    ),
    OnboardingItem(
      imagePath: "assets/images/location.png",
      title: "Find Our Stations",
      description: "Find Your nearest station to rent your car!",
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

  void goToMainPage() => Get.toNamed(Routes.BOTTOM_NAV_BAR);
}

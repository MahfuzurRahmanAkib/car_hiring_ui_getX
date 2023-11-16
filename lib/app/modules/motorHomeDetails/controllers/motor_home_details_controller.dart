import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class MotorHomeDetailsController extends GetxController {
  //TODO: Implement MotorHomeDetailsController

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

  void goToBottomBar() => Get.toNamed(Routes.BOTTOM_NAV_BAR);
}

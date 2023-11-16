import 'package:get/get.dart';

import '../controllers/motor_home_details_controller.dart';

class MotorHomeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MotorHomeDetailsController>(
      () => MotorHomeDetailsController(),
    );
  }
}

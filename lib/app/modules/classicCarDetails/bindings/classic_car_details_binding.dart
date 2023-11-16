import 'package:get/get.dart';

import '../controllers/classic_car_details_controller.dart';

class ClassicCarDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicCarDetailsController>(
      () => ClassicCarDetailsController(),
    );
  }
}

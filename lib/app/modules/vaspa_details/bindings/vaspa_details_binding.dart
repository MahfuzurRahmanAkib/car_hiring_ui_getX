import 'package:get/get.dart';

import '../controllers/vaspa_details_controller.dart';

class VaspaDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VaspaDetailsController>(
      () => VaspaDetailsController(),
    );
  }
}

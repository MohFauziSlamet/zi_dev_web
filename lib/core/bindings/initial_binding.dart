import 'package:get/get.dart';
import 'package:zi_dev_web/controller/theme_data_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Initialize HomeController once
    if (!Get.isRegistered<HomeController>()) {
      Get.put(HomeController(), permanent: true);
    }
  }
}

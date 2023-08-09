import 'package:get/get.dart';

import '../controllers/list_hari_ini_controller.dart';

class ListHariIniBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListHariIniController>(
      () => ListHariIniController(),
    );
  }
}

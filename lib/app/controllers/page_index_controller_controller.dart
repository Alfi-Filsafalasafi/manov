import 'package:get/get.dart';

import '../routes/app_pages.dart';

class PageIndexController extends GetxController {
  RxInt pageIndex = 0.obs;

  void ChangePage(int i) async {
    switch (i) {
      case 0:
        pageIndex.value = i;
        Get.offAllNamed(Routes.HOME);
        break;
      case 1:
        pageIndex.value = i;
        Get.offAllNamed(Routes.LIST_HARI_INI);
        break;
      case 2:
        pageIndex.value = i;
        Get.offAllNamed(Routes.GRAFIK);
        break;
      case 3:
        pageIndex.value = i;
        Get.offAllNamed(Routes.SETTING);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
    }
  }
}

import 'package:get/get.dart';

class TransaksiController extends GetxController {
  final List<String> dropdownItems = [
    'Pilih Salah Satu',
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  final RxString selectedValue = 'Pilih Salah Satu'.obs;
}

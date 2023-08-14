import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class HistoryController extends GetxController {
  var dateSelect = DateTime.now().obs;
  RxInt yearSelect = DateTime.now().year.obs;

  void chooseDatePickerMonthYear() async {
    final values = await showMonthPicker(
      context: Get.context!,
      headerColor: Color(0xFF023047),
      selectedMonthBackgroundColor: Color(0xFF023047),
      unselectedMonthTextColor: Color(0xFf023047),
      confirmWidget: Text(
        'Pilih',
        style:
            TextStyle(fontFamily: 'Barlow-SemiBold', color: Color(0xFF023047)),
      ),
      cancelWidget: Text(
        'Kembali',
        style:
            TextStyle(fontFamily: 'Barlow-SemiBold', color: Color(0xFF023047)),
      ),
      initialDate: DateTime.now(),
    ).then((date) {
      if (date != null) {
        dateSelect.value = date;
        print(date);
        update();
      }
    });
  }

  void chooseDatePickerYear() async {
    showDialog(
        context: Get.context!,
        builder: (context) {
          final Size size = MediaQuery.of(context).size;
          return AlertDialog(
            title: Text('Select a Year'),
            contentPadding: const EdgeInsets.all(10),
            content: SizedBox(
              height: size.height / 3,
              width: size.width,
              //  Creating a grid view with 3 elements per line.
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  ...List.generate(
                    10,
                    (index) => InkWell(
                      onTap: () {
                        yearSelect.value = 2045 - index;
                        update();
                        Get.back();
                      },
                      // This part is up to you, it's only ui elements
                      child: Center(
                        child: Text(
                          (2045 - index).toString(),
                          style: TextStyle(
                              fontFamily: 'Barlow', color: Color(0xFF023047)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GrafikController extends GetxController {
  var dateRange = DateTimeRange(
    start: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day - 6),
    end: DateTime.now(),
  ).obs;

  // chooseDateRangePicker() async {
  //   DateTimeRange? picked = await showDateRangePicker(
  //       context: Get.context!,
  //       firstDate: DateTime(DateTime.now().year - 10),
  //       lastDate: DateTime(DateTime.now().year + 20),
  //       initialDateRange: dateRange.value);
  //   if (picked != null && picked != dateRange.value) {
  //     dateRange.value = picked;
  //   }
  // }
  // void chooseDateRangePicker() {
  //   showCustomDateRangePicker(
  //     Get.context!,
  //     dismissible: true,
  //     minimumDate: DateTime.now(),
  //     maximumDate: DateTime.now().add(const Duration(days: 30)),
  //     startDate: dateRange.value.start,
  //     endDate: dateRange.value.end,
  //     onApplyClick: (start, end) {
  //       dateRange.value = DateTimeRange(start: start, end: end);
  //     },
  //     onCancelClick: () {
  //       dateRange.value = DateTimeRange(
  //         start: DateTime.now().subtract(Duration(days: 6)),
  //         end: DateTime.now(),
  //       );
  //     },
  //   );
  // }

  void chooseDateRangePicker() async {
    final startDate = dateRange.value.start;
    final endDate = dateRange.value.end;
    final values = await showCalendarDatePicker2Dialog(
      context: Get.context!,
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.range,
        selectedDayTextStyle: TextStyle(color: Colors.white),
        selectedDayHighlightColor: Color(0xFF023047),
      ),
      value: [startDate, endDate],
      dialogSize: const Size(325, 400),
      borderRadius: BorderRadius.circular(15),
    );
    if (values != null) {
      final startDate = values[0];
      final endDate = values[1];
      dateRange.value = DateTimeRange(start: startDate!, end: endDate!);
      update();
    }
  }
}

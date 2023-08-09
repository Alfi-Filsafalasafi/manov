import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/controllers/page_index_controller_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  initializeDateFormatting('id_ID');
  final pageC = Get.put(PageIndexController(), permanent: true);
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontFamily: 'Barlow',
            ),
            bodyMedium: TextStyle(
              fontFamily: 'Barlow',
              color: Colors.white,
            ),
            bodySmall: TextStyle(
              fontFamily: 'Barlow-SemiBold',
              color: Color(0xFF777F88),
            ),
            headlineSmall:
                TextStyle(fontFamily: 'Barlow-SemiBold', color: Colors.white),
            labelMedium: TextStyle(fontFamily: 'Barlow-Medium'),
            titleSmall:
                TextStyle(fontFamily: 'Barlow-Medium', color: Colors.white)),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

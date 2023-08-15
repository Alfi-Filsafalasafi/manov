import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  int totalMonths = DateTime.now().month;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            color: const Color(0xFF023047),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "Saldo Rp. 1.835.000",
                    textAlign: TextAlign.end,
                    style:
                        TextStyle(fontFamily: 'Barlow-SemiBold', fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon/dateRange_l.png",
                            height: 8.49,
                            width: 5.66,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 70,
                            height: 20,
                            child: TabBarView(
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.chooseDatePickerMonthYear();
                                  },
                                  child: Obx(
                                    () => Text(
                                      "${DateFormat("MMM yyyy", 'id_ID').format(controller.dateSelect.value).replaceAll(".", "")} ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Barlow-SemiBold',
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.chooseDatePickerMonthYear();
                                  },
                                  child: Obx(
                                    () => Text(
                                      "${DateFormat("MMM yyyy", 'id_ID').format(controller.dateSelect.value).replaceAll(".", "")}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Barlow-SemiBold',
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.chooseDatePickerYear();
                                  },
                                  child: Obx(
                                    () => Text(
                                      "${controller.yearSelect.value}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Barlow-SemiBold',
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.chooseDatePickerYear();
                                  },
                                  child: Obx(
                                    () => Text(
                                      "${controller.yearSelect.value}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Barlow-SemiBold',
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/icon/dateRange_r.png",
                            height: 8.49,
                            width: 5.66,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TabBar(
                  labelStyle: TextStyle(
                      fontSize: 13, // Ukuran font
                      fontFamily: 'Barlow-Medium' // Ketebalan font
                      ),
                  indicator: UnderlineTabIndicator(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 3.0, // Lebar garis
                      color: Colors.white, // Warna garis yang Anda inginkan
                    ),
                    insets: const EdgeInsets.symmetric(
                        horizontal: 1.0), // Jarak horizontal
                  ),
                  tabs: const [
                    Tab(
                      text: "Harian",
                    ),
                    Tab(
                      text: "Mingguan",
                    ),
                    Tab(
                      text: "Bulanan",
                    ),
                    Tab(
                      text: "Tahunan",
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                //ini page 1
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Pemasukan",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 840.000",
                                  style: TextStyle(
                                      color: Color(0xFF2A9D8F),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Pengeluaran",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 433.000",
                                  style: TextStyle(
                                      color: Color(0xFFE76F51),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 10,
                      color: Color(0xFFF9F9F9),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView(
                          children: [
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID')
                                  .format(DateTime.now()),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID')
                                  .format(DateTime.now()),
                              pemasukan: "Rp. 540.000",
                              pengeluaran: "Rp. 58.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 1))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 1))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 21.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 2))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 2))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 21.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 3))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 3))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 23.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 4))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 4))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 18.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 5))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 5))),
                              pemasukan: "Rp. 5000",
                              pengeluaran: "Rp. 25.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 6))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 6))),
                              pemasukan: "Rp. 10.000",
                              pengeluaran: "Rp. 21.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 7))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 7))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 30.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 8))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 8))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 19.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 9))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 9))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 18.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 10))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 10))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 20.000",
                            ),
                            DataHistory(
                              hari: DateFormat('EEEE', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 11))),
                              tgl: DateFormat('dd MMM yyyy', 'id_ID').format(
                                  DateTime.now().subtract(Duration(days: 11))),
                              pemasukan: "Rp. 0",
                              pengeluaran: "Rp. 28.000",
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                //ini page 2
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Pemasukan",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 840.000",
                                  style: TextStyle(
                                      color: Color(0xFF2A9D8F),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Pengeluaran",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 433.000",
                                  style: TextStyle(
                                      color: Color(0xFFE76F51),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 10,
                      color: Color(0xFFF9F9F9),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView(
                          children: List.generate(
                            totalWeeksInMonth(DateTime
                                .now()), // Menghitung jumlah minggu dalam bulan saat ini
                            (weekIndex) {
                              DateTime startOfWeek = calculateStartOfWeek(
                                  DateTime.now(), weekIndex);
                              print(startOfWeek);
                              return DataHistory(
                                hari: buildWeeklyDateRange(startOfWeek),
                                tgl: "Minggu ${weekIndex + 1}",
                                pemasukan:
                                    "Rp. ${generatePemasukanValue(weekIndex)}",
                                pengeluaran:
                                    "Rp. ${generatePengeluaranValue(weekIndex)}",
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                //ini page 3
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Pemasukan",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 8.100.000",
                                  style: TextStyle(
                                      color: Color(0xFF2A9D8F),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Pengeluaran",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 5.855.000",
                                  style: TextStyle(
                                      color: Color(0xFFE76F51),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 10,
                      color: Color(0xFFF9F9F9),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: // Menghitung total bulan dari Januari hingga bulan saat ini

                            ListView(
                          children: List.generate(
                            totalMonths,
                            (index) {
                              int monthToShow = DateTime.now().month -
                                  index; // Dimulai dari bulan Januari
                              int yearToShow = DateTime.now().year;

                              DateTime startOfMonth =
                                  DateTime(yearToShow, monthToShow, 1);

                              return DataHistory(
                                hari: DateTime.now().year.toString(),
                                tgl: DateFormat('MMMM', 'id_ID')
                                    .format(startOfMonth),
                                pemasukan:
                                    "Rp. ${generatePemasukanValueBulanan(index)}",
                                pengeluaran:
                                    "Rp. ${generatePengeluaranValueBulanan(index)}",
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                //ini page 4
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Pemasukan",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 8.100.000",
                                  style: TextStyle(
                                      color: Color(0xFF2A9D8F),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Pengeluaran",
                                  style: TextStyle(color: Color(0xFF52656F))),
                              Text("Rp. 5.855.000",
                                  style: TextStyle(
                                      color: Color(0xFFE76F51),
                                      fontFamily: 'Barlow-Medium')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 10,
                      color: Color(0xFFF9F9F9),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView(
                          children: List.generate(
                            2,
                            (index) {
                              int reversedIndex = 1 - index;
                              return DataHistoryTahun(
                                tahun: "${2022 + reversedIndex}",
                                pemasukan:
                                    "Rp. ${generatePemasukanValueTahunan(index)}",
                                pengeluaran:
                                    "Rp. ${generatePengeluaranValueTahunan(index)}",
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  int totalWeeksInMonth(DateTime date) {
    int totalDays = DateTime(date.year, date.month + 1, 0).day;
    int totalWeeks = ((totalDays + date.weekday - 1) / 7).ceil();
    return totalWeeks;
  }

  DateTime calculateStartOfWeek(DateTime date, int weekIndex) {
    DateTime firstDayOfMonth = DateTime(date.year, date.month, 1);
    int daysToAdd = (weekIndex * 7) - firstDayOfMonth.weekday + 1;
    return firstDayOfMonth.add(Duration(days: daysToAdd));
  }

  String buildWeekly(DateTime date) {
    int weekNumber = ((date.day - date.weekday + 10) / 7)
        .floor(); // Menghitung minggu dalam bulan

    return "Minggu $weekNumber";
  }

  int totalMonthsInRange(DateTime start, DateTime end) {
    return (end.year - start.year) * 12 + end.month - start.month + 1;
  }

  String buildWeeklyDateRange(DateTime date) {
    // Menghitung minggu dalam bulan
    DateTime startOfWeek = date.subtract(Duration(days: date.weekday - 1));
    DateTime endOfWeek = startOfWeek.add(Duration(days: 6));

    String formattedStartDate =
        DateFormat('dd MMM', 'id_ID').format(startOfWeek);
    String formattedEndDate = DateFormat('dd MMM', 'id_ID').format(endOfWeek);

    return "$formattedStartDate - $formattedEndDate";
  }

  String generatePemasukanValue(int weekIndex) {
    var pemasukan = "0";
    switch (weekIndex) {
      case 0:
        pemasukan = "300.000";
        break;
      case 1:
        pemasukan = "0";
        break;
      case 2:
        pemasukan = "540.000";
        break;
      case 3:
        pemasukan = "0";
        break;
      case 4:
        pemasukan = "5.000";
        break;
      default:
        pemasukan = "0";
    }
    return pemasukan;
  }
}

String generatePengeluaranValue(int weekIndex) {
  var pengeluaran = "0";
  switch (weekIndex) {
    case 0:
      pengeluaran = "200.000";
      break;
    case 1:
      pengeluaran = "175.000";
      break;
    case 2:
      pengeluaran = "58.000";
      break;
    case 3:
      pengeluaran = "0";
      break;
    case 4:
      pengeluaran = "0";
      break;
    default:
      pengeluaran = "0";
  }
  return pengeluaran;
}

String generatePemasukanValueBulanan(int weekIndex) {
  var pemasukan = "0";
  switch (weekIndex) {
    case 0:
      pemasukan = "300.000";
      break;
    case 1:
      pemasukan = "0";
      break;
    case 2:
      pemasukan = "540.000";
      break;
    case 3:
      pemasukan = "0";
      break;
    case 4:
      pemasukan = "5.000";
      break;
    default:
      pemasukan = "0";
  }
  return pemasukan;
}

String generatePengeluaranValueBulanan(int weekIndex) {
  var pengeluaran = "0";
  switch (weekIndex) {
    case 0:
      pengeluaran = "200.000";
      break;
    case 1:
      pengeluaran = "175.000";
      break;
    case 2:
      pengeluaran = "58.000";
      break;
    case 3:
      pengeluaran = "0";
      break;
    case 4:
      pengeluaran = "0";
      break;
    default:
      pengeluaran = "0";
  }
  return pengeluaran;
}

String generatePemasukanValueTahunan(int weekIndex) {
  var pemasukan = "0";
  switch (weekIndex) {
    case 0:
      pemasukan = "8.100.000";
      break;
    case 1:
      pemasukan = "0";
      break;
    default:
      pemasukan = "0";
  }
  return pemasukan;
}

String generatePengeluaranValueTahunan(int weekIndex) {
  var pengeluaran = "0";
  switch (weekIndex) {
    case 0:
      pengeluaran = "5.600.000";
      break;
    case 1:
      pengeluaran = "255.000";
      break;
    default:
      pengeluaran = "0";
  }
  return pengeluaran;
}

class DataHistory extends StatelessWidget {
  const DataHistory({
    super.key,
    required this.hari,
    required this.tgl,
    required this.pemasukan,
    required this.pengeluaran,
  });
  final String hari;
  final String tgl;
  final String pemasukan;
  final String pengeluaran;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Get.width / 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hari,
                      style: TextStyle(color: Color(0xFF52656F), fontSize: 12)),
                  Text(tgl, style: TextStyle(color: Color(0xFF52656F))),
                ],
              ),
            ),
            Container(
              width: Get.width / 4,
              child: Text(pemasukan,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'Barlow-Medium',
                      fontSize: 12,
                      color: Color(0xFF2A9D8F))),
            ),
            Container(
              width: Get.width / 4,
              child: Text(pengeluaran,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'Barlow-Medium',
                      fontSize: 12,
                      color: Color(0xFFE76F51))),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class DataHistoryTahun extends StatelessWidget {
  const DataHistoryTahun({
    super.key,
    required this.tahun,
    required this.pemasukan,
    required this.pengeluaran,
  });
  final String tahun;
  final String pemasukan;
  final String pengeluaran;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Get.width / 4,
              child: Text(tahun, style: TextStyle(color: Color(0xFF52656F))),
            ),
            Container(
              width: Get.width / 4,
              child: Text(pemasukan,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'Barlow-Medium',
                      fontSize: 12,
                      color: Color(0xFF2A9D8F))),
            ),
            Container(
              width: Get.width / 4,
              child: Text(pengeluaran,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'Barlow-Medium',
                      fontSize: 12,
                      color: Color(0xFFE76F51))),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

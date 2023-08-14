import 'dart:ffi';

import 'package:bottom_bar/bottom_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../controllers/page_index_controller_controller.dart';
import '../../../widgets/indicator.dart';
import '../controllers/grafik_controller.dart';

class GrafikView extends GetView<GrafikController> {
  final pageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              color: const Color(0xFF023047),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Saldo Rp. 1.835.000",
                    textAlign: TextAlign.end,
                    style:
                        TextStyle(fontFamily: 'Barlow-SemiBold', fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
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
                          InkWell(
                            onTap: () {
                              controller.chooseDateRangePicker();
                            },
                            child: Obx(
                              () => Text(
                                "${DateFormat("dd MMM yy", 'id_ID').format(controller.dateRange.value.start).replaceAll(".", "")} s.d. ${DateFormat("dd MMM yy", 'id_ID').format(controller.dateRange.value.end).replaceAll(".", "")}",
                                style: TextStyle(
                                    fontFamily: 'Barlow-SemiBold',
                                    fontSize: 14),
                              ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  TabBar(
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 4.0, // Lebar garis
                        color: Colors.white, // Warna garis yang Anda inginkan
                      ),
                      insets: const EdgeInsets.symmetric(
                          horizontal: 16.0), // Jarak horizontal
                    ),
                    tabs: const [
                      Tab(
                        text: "Pemasukan",
                      ),
                      Tab(
                        text: "Pengeluaran",
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                //Page Pemasukan
                ListView(
                  padding: const EdgeInsets.all(30),
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 160,
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Get.width / 4,
                            child: Stack(
                              children: [
                                PieChart(
                                  PieChartData(
                                    pieTouchData: PieTouchData(
                                      touchCallback: (FlTouchEvent event,
                                          pieTouchResponse) {},
                                    ),
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 40,
                                    sections: showingSections(),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Rp. 780.000",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF52656F),
                                        fontFamily: 'Barlow-Medium'),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 3,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Indicator(
                                  color: Color(0xFF1982C4),
                                  text: 'Makanan',
                                  textColor: Color(0xFF52656F),
                                  isSquare: true,
                                  persen: '77%',
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                    color: Color(0xFFFB5607),
                                    text: 'Transportasi',
                                    isSquare: true,
                                    persen: '10%'),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                    color: Color(0xFF8338EC),
                                    text: 'Papan',
                                    isSquare: true,
                                    persen: '6%'),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                    color: Color(0xFFFFBE0B),
                                    text: 'Minuman',
                                    isSquare: true,
                                    persen: '3%'),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                    color: Color(0xFFFF006E),
                                    text: 'Lainnya',
                                    isSquare: true,
                                    persen: '3%'),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                    color: Color(0xFF00FF0A),
                                    text: 'Hiburan',
                                    isSquare: true,
                                    persen: '1%'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Obx(
                      () => Text(
                        "${DateFormat("dd MMMM yyyy", 'id_ID').format(controller.dateRange.value.start).replaceAll(".", "")} s.d. ${DateFormat("dd MMMM yyyy", 'id_ID').format(controller.dateRange.value.end).replaceAll(".", "")}",
                        style: TextStyle(
                            fontFamily: 'Barlow-SemiBold',
                            fontSize: 14,
                            color: Color(0xFF0D1B2A)),
                      ),
                    ),
                    const ProgressIndicator(
                      kategori: "Makanan",
                      persen: 77,
                      uang: "Rp. 600.000",
                      warna: Color(0xFF1982C4),
                    ),
                    const ProgressIndicator(
                      kategori: "Transportasi",
                      persen: 10,
                      uang: "Rp. 75.000",
                      warna: Color(0xFFFB5607),
                    ),
                    const ProgressIndicator(
                      kategori: "Papan",
                      persen: 6,
                      uang: "Rp. 40.000",
                      warna: Color(0xFF8338EC),
                    ),
                    const ProgressIndicator(
                      kategori: "Minuman",
                      persen: 3,
                      uang: "Rp. 30.000",
                      warna: Color(0xFFFFBE0B),
                    ),
                    const ProgressIndicator(
                      kategori: "Lainnya",
                      persen: 3,
                      uang: "Rp. 25.000",
                      warna: Color(0xFFFF006E),
                    ),
                    const ProgressIndicator(
                      kategori: "Hiburan",
                      persen: 1,
                      uang: "Rp. 10.000",
                      warna: Color(0xFF00FF0A),
                    ),
                  ],
                ),
                //Page Pengeluaran
                Center(
                  child: Text(
                    "Ini Page 2",
                    style: TextStyle(color: Color(0xFF023047)),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: pageC.pageIndex.value,
        onTap: (int i) => pageC.ChangePage(i),
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Image.asset(
              "assets/bottombaricon/home.png",
              height: 18,
            ),
            inactiveIcon: Image.asset(
              "assets/bottombaricon/homeIn.png",
              height: 18,
            ),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Image.asset(
              "assets/bottombaricon/list.png",
              height: 18,
            ),
            inactiveIcon: Image.asset(
              "assets/bottombaricon/listIn.png",
              height: 18,
            ),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Image.asset(
              "assets/bottombaricon/grafik.png",
              height: 18,
            ),
            inactiveIcon: Image.asset(
              "assets/bottombaricon/grafikIn.png",
              height: 18,
            ),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Image.asset(
              "assets/bottombaricon/setting.png",
              height: 18,
            ),
            inactiveIcon: Image.asset(
              "assets/bottombaricon/settingIn.png",
              height: 18,
            ),
            activeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator({
    super.key,
    required this.kategori,
    required this.persen,
    required this.uang,
    required this.warna,
  });
  final String kategori;
  final int persen;
  final String uang;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  kategori,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF52656F),
                      fontFamily: "Barlow-Medium"),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "${persen.toString()}%",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF52656F),
                  ),
                ),
              ],
            ),
            Text(
              uang,
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF52656F),
                  fontFamily: "Barlow-Medium"),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        LinearProgressIndicator(
          value: persen / 100, // Nilai antara 0.0 dan 1.0, menunjukkan kemajuan
          backgroundColor: Color(0xFFEDEDED),
          valueColor: AlwaysStoppedAnimation<Color>(warna),
        ),
      ],
    );
  }
}

List<PieChartSectionData> showingSections() {
  return List.generate(6, (i) {
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Color(0xFF1982C4),
          value: 77,
          title: '',
          radius: 40,
        );
      case 1:
        return PieChartSectionData(
          color: Color(0xFFFB5607),
          value: 10,
          title: '',
          radius: 40,
        );
      case 2:
        return PieChartSectionData(
          color: Color(0xFF8338EC),
          value: 6,
          title: '',
          radius: 40,
        );
      case 3:
        return PieChartSectionData(
          color: Color(0xFFFFBE0B),
          value: 3,
          title: '',
          radius: 40,
        );
      case 4:
        return PieChartSectionData(
          color: Color(0xFFFF006E),
          value: 3,
          title: '',
          radius: 40,
        );
      case 5:
        return PieChartSectionData(
          color: Color(0xFF00FF0A),
          value: 1,
          title: '',
          radius: 40,
        );
      default:
        throw Error();
    }
  });
}

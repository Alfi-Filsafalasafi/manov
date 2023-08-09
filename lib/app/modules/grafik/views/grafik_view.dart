import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../controllers/page_index_controller_controller.dart';
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
              padding: EdgeInsets.only(left: 30, right: 30, top: 50),
              color: Color(0xFF023047),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Saldo Rp. 1.835.000",
                    textAlign: TextAlign.end,
                    style:
                        TextStyle(fontFamily: 'Barlow-SemiBold', fontSize: 14),
                  ),
                  SizedBox(
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
                                "${DateFormat("dd MMM yy").format(controller.dateRange.value.start).replaceAll(".", "")} s.d. ${DateFormat("dd MMM yy").format(controller.dateRange.value.end).replaceAll(".", "")}",
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
                  SizedBox(
                    height: 10,
                  ),
                  TabBar(
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 4.0, // Lebar garis
                        color: Colors.white, // Warna garis yang Anda inginkan
                      ),
                      insets: EdgeInsets.symmetric(
                          horizontal: 16.0), // Jarak horizontal
                    ),
                    tabs: [
                      Tab(
                        text: "Pemasukan",
                      ),
                      Tab(
                        text: "Pengeluaran",
                      )
                    ],
                  ),
                  TabBarView(children: [
                    Center(
                      child: Text(
                        "Ini Page 1",
                        style: TextStyle(color: Color(0xFF023047)),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Ini Page 2",
                        style: TextStyle(color: Color(0xFF023047)),
                      ),
                    )
                  ])
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                children: [],
              ),
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

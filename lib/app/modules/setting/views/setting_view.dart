import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/page_index_controller_controller.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  final pageC = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF023047),
            width: Get.width,
            padding: EdgeInsets.only(left: 10, right: 30, top: 50, bottom: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const Text(
                "Saldo Rp.1835.000",
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: 'Barlow-Medium'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 35,
                  child: ClipOval(
                    child: SizedBox(
                      child: Image.asset(
                        "assets/images/fotoku.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Alfi Filsafalasafi",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Barlow-Medium'),
                ),
                subtitle: Text(
                  "filsafalasafi@gmail.com / 085232842550",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: 'Barlow-Medium'),
                ),
              )
            ]),
          ),
          Container(
            height: 10,
            width: Get.width,
            color: Color(0xFFF9F9F9),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Pembagian Pengeluaran tiap bulan",
                  style: TextStyle(color: Color(0xFF0D1B2A), fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Rp. 650.000",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF0D1B2A)),
                        ),
                        Text(
                          "Makanan",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF777F88)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Rp. 650.000",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF0D1B2A)),
                        ),
                        Text(
                          "Transportasi",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF777F88)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Rp. 650.000",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF0D1B2A)),
                        ),
                        Text(
                          "Paket Data",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF777F88)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: Get.width,
            color: Color(0xFFF9F9F9),
          ),
          SizedBox(
            height: 35,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Image.asset(
              "assets/icon/aturuang.png",
              width: 28,
              height: 22,
            ),
            title: Text(
              "Atur Keuanganmu",
              style: TextStyle(
                  color: Color(0xFF52656F),
                  fontSize: 14,
                  fontFamily: 'Barlow-Medium'),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Image.asset(
              "assets/icon/gantipass.png",
              width: 28,
              height: 22,
            ),
            title: Text(
              "Ganti Password",
              style: TextStyle(
                  color: Color(0xFF52656F),
                  fontSize: 14,
                  fontFamily: 'Barlow-Medium'),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Image.asset(
              "assets/icon/pusatbantuan.png",
              width: 28,
              height: 22,
            ),
            title: Text(
              "Pusat Bantuan",
              style: TextStyle(
                  color: Color(0xFF52656F),
                  fontSize: 14,
                  fontFamily: 'Barlow-Medium'),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Image.asset(
              "assets/icon/logout.png",
              width: 28,
              height: 22,
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                  color: Color(0xFF52656F),
                  fontSize: 14,
                  fontFamily: 'Barlow-Medium'),
            ),
          )
        ],
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

import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart'; // Import ini untuk inisi
import 'package:manov/app/routes/app_pages.dart';

import '../../../controllers/page_index_controller_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final pageC = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              height: 210,
              width: Get.width,
              child: Image.asset(
                "assets/images/bgappbar.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Image.asset("assets/logo/logo.png"),
                                  ),
                                  DisplayDateNow(),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "1.850.000",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 14, top: 20),
                                  width: 20,
                                  height: 34,
                                  child: Image.asset(
                                      "assets/icon/notification.png"),
                                ),
                                Positioned(
                                  top:
                                      13, // Sesuaikan posisi vertikal lingkaran dengan kebutuhan Anda
                                  right:
                                      5, // Sesuaikan posisi horizontal lingkaran dengan kebutuhan Anda
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: Colors.red, // Warna lingkaran
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1', // Angka yang ingin Anda tampilkan
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            "Bulan ini",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pemasukan :  840.000"),
                              Text("Pengeluaran :  433.000")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 4,
                  shadowColor: Color(0xFF023047).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hari ini",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pemasukan",
                                style: TextStyle(
                                    fontFamily: 'Barlow-Medium',
                                    color: Colors.black)),
                            Text("540.000",
                                style: TextStyle(
                                    fontFamily: 'Barlow-SemiBold',
                                    color: Color(0xFF219EBC),
                                    fontSize: 16)),
                            Text("kemarin Rp.0",
                                style: TextStyle(
                                    fontFamily: 'Barlow',
                                    color: Color(0xFF777F88),
                                    fontSize: 10)),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pengeluaran",
                                style: TextStyle(
                                    fontFamily: 'Barlow-Medium',
                                    color: Colors.black)),
                            Text("80.000",
                                style: TextStyle(
                                    fontFamily: 'Barlow-SemiBold',
                                    color: Color(0xFF219EBC),
                                    fontSize: 16)),
                            Text("kemarin Rp.85.0000",
                                style: TextStyle(
                                    fontFamily: 'Barlow',
                                    color: Color(0xFF777F88),
                                    fontSize: 10)),
                          ],
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          child: Image.asset("assets/icon/unduh.png"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.PEMASUKAN),
                            child: Column(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1FBFF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        9), // Padding di sekitar ikon
                                    child: Center(
                                      child: Image.asset(
                                        "assets/icon/pemasukan.png", // Path ke ikon
                                        width: 18,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pemasukan",
                                  style: TextStyle(
                                      fontFamily: 'Barlow-Medium',
                                      fontSize: 12,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.PENGELUARAN),
                            child: Column(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1FBFF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        9), // Padding di sekitar ikon
                                    child: Center(
                                      child: Image.asset(
                                        "assets/icon/pengeluaran.png", // Path ke ikon
                                        width: 18,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pengeluaran",
                                  style: TextStyle(
                                      fontFamily: 'Barlow-Medium',
                                      fontSize: 12,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.REKOMENDASI),
                            child: Column(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1FBFF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        9), // Padding di sekitar ikon
                                    child: Center(
                                      child: Image.asset(
                                        "assets/icon/rekomendasi.png", // Path ke ikon
                                        width: 18,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Rekomendasi",
                                  style: TextStyle(
                                      fontFamily: 'Barlow-Medium',
                                      fontSize: 12,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.HISTORY);
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1FBFF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        9), // Padding di sekitar ikon
                                    child: Center(
                                      child: Image.asset(
                                        "assets/icon/history.png", // Path ke ikon
                                        width: 18,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Histori ",
                                  style: TextStyle(
                                      fontFamily: 'Barlow-Medium',
                                      fontSize: 12,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 10,
                      width: Get.width,
                      color: Color(0xFFF9F9F9),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rekomendasi Pengeluaran Hari ini",
                                style: TextStyle(
                                  color: Color(0xFF7c7c7c),
                                  fontSize: 12,
                                  fontFamily: 'Barlow-Medium',
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/icon/list.png"))
                            ],
                          ),
                          Text(
                            "Makan (2x Sehari)",
                            style: TextStyle(
                                color: Color(0xFF023047), fontSize: 12),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "Pagi : Nasi Sayur Lodeh tempe tahu (Rp.10.000)",
                                  style: TextStyle(
                                      color: Color(0xFF023047),
                                      fontSize: 12,
                                      fontFamily: 'Barlow-Medium'),
                                ),
                              ),
                              Text(
                                "Warung Bu Tin",
                                style: TextStyle(
                                    color: Color(0xFF023047),
                                    fontSize: 12,
                                    fontFamily: 'Barlow-Bold'),
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "Sore : Nasi ayam laos kangkung (Rp.9.000)",
                                  style: TextStyle(
                                      color: Color(0xFF023047),
                                      fontSize: 12,
                                      fontFamily: 'Barlow-Medium'),
                                ),
                              ),
                              Text(
                                "Baleluwe",
                                style: TextStyle(
                                    color: Color(0xFF023047),
                                    fontSize: 12,
                                    fontFamily: 'Barlow-Bold'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Keperluan diluar makan",
                            style: TextStyle(
                                color: Color(0xFF023047), fontSize: 12),
                          ),
                          Text(
                            "Maksimal Rp.20.000 untuk hari ini",
                            style: TextStyle(
                                color: Color(0xFF023047),
                                fontSize: 12,
                                fontFamily: 'Barlow-Medium'),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: Get.width,
                      color: Color(0xFFF9F9F9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          catatanHarian(
                            pemasukan: true,
                          ),
                          catatanHarian(pemasukan: false),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
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

class catatanHarian extends StatelessWidget {
  const catatanHarian({
    super.key,
    required this.pemasukan,
  });
  final bool pemasukan;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Ubah nilai sesuai keinginan
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), // Atur radius sudut kiri atas
              topRight: Radius.circular(10.0), // Atur radius sudut kanan atas
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: pemasukan ? Color(0xFF2A9D8F) : Color(0xFFE76F51),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hari ini, 09:10:12",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 4,
                        ),
                        color: Colors.white,
                        child: Text(
                          "Jum'at",
                          style:
                              TextStyle(color: Color(0xFF023047), fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Rp.540.000",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          child: Text(
                            "Cash",
                            style: TextStyle(
                                color: Color(0xFF777F88), fontSize: 12),
                          ),
                        ),
                        Text("Pemberian Orang Tua",
                            style: TextStyle(
                                color: Color(0xFF52656F), fontSize: 12))
                      ],
                    ),
                    Text(
                      "500.000",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0D1B2A),
                          fontFamily: 'Barlow-Medium'),
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          child: Text(
                            "Cash",
                            style: TextStyle(
                                color: Color(0xFF777F88), fontSize: 12),
                          ),
                        ),
                        Text("Pemberian Orang Tua",
                            style: TextStyle(
                                color: Color(0xFF52656F), fontSize: 12))
                      ],
                    ),
                    Text(
                      "500.000",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0D1B2A),
                          fontFamily: 'Barlow-Medium'),
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          child: Text(
                            "Cash",
                            style: TextStyle(
                                color: Color(0xFF777F88), fontSize: 12),
                          ),
                        ),
                        Text("Pemberian Orang Tua",
                            style: TextStyle(
                                color: Color(0xFF52656F), fontSize: 12))
                      ],
                    ),
                    Text(
                      "500.000",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0D1B2A),
                          fontFamily: 'Barlow-Medium'),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DisplayDateNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, d MMMM y', 'id_ID').format(now);

    return Text(
      formattedDate,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

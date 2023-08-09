import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/page_index_controller_controller.dart';
import '../controllers/list_hari_ini_controller.dart';

class ListHariIniView extends GetView<ListHariIniController> {
  final pageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 10),
            color: Color(0xFF023047),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaksi Hari ini",
                      style: TextStyle(
                          fontFamily: 'Barlow-SemiBold', fontSize: 16),
                    ),
                    Text(
                      "Saldo Rp. 1.835.000",
                      style: TextStyle(
                          fontFamily: 'Barlow-SemiBold', fontSize: 14),
                    ),
                  ],
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
                          "Pemasukan = Rp.590.000",
                          style: TextStyle(
                              fontSize: 12, fontFamily: 'Barlow-Medium'),
                        ),
                        Text(
                          "Pemasukan = Rp.590.000",
                          style: TextStyle(
                              fontSize: 12, fontFamily: 'Barlow-Medium'),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFB703),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text(
                          "Tambah Transaksi",
                          style: TextStyle(fontSize: 10),
                        ))
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              children: [
                catatanHarian(pemasukan: true),
                catatanHarian(pemasukan: false),
                catatanHarian(pemasukan: false),
                catatanHarian(pemasukan: false),
                catatanHarian(pemasukan: false),
                catatanHarian(pemasukan: false),
              ],
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

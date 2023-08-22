import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:manov/app/routes/app_pages.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: TabBarView(children: [
            //ini intro pertama
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/aturKeuangan.png",
                  height: Get.width * 0.6,
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: Get.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFF023047), // Ganti dengan warna yang Anda inginkan
                        ),
                      ),
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFFD9D9D9), // Ganti dengan warna yang Anda inginkan
                        ),
                      ),
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFFD9D9D9), // Ganti dengan warna yang Anda inginkan
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Atur Keuanganmu",
                  style: TextStyle(
                      color: Color(0xFF023047),
                      fontSize: 24,
                      fontFamily: 'Barlow-Medium'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Catat pengeluaran dan pemasukan uangmu serta atur berapa rata-rata pengeluaranmu untuk tiap bulan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF023047),
                        fontSize: 14,
                        fontFamily: 'Barlow-Medium'),
                  ),
                )
              ],
            ),
            //ini intro kedua
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/rekomendasiPengeluaran.png",
                  height: Get.width * 0.6,
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: Get.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFF023047), // Ganti dengan warna yang Anda inginkan
                        ),
                      ),
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFF023047), // Ganti dengan warna yang Anda inginkan
                        ),
                      ),
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFFD9D9D9), // Ganti dengan warna yang Anda inginkan
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Rekomendasi Pengeluaran",
                  style: TextStyle(
                      color: Color(0xFF023047),
                      fontSize: 24,
                      fontFamily: 'Barlow-Medium'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Muncul rekomendasi pengeluaran untuk makan, transportasi, dan kebutuhan lain sesuai dengan rata-rata jumlah pengeluaranmu tiap bulan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF023047),
                        fontSize: 14,
                        fontFamily: 'Barlow-Medium'),
                  ),
                )
              ],
            ),
            //ini intro ketiga
            Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      Image.asset(
                        "assets/images/rekomendasiPengeluaran.png",
                        height: Get.width * 0.6,
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: Get.width * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xFF023047), // Ganti dengan warna yang Anda inginkan
                              ),
                            ),
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xFF023047), // Ganti dengan warna yang Anda inginkan
                              ),
                            ),
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xFF023047), // Ganti dengan warna yang Anda inginkan
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Grafik Transaksi",
                        style: TextStyle(
                            color: Color(0xFF023047),
                            fontSize: 24,
                            fontFamily: 'Barlow-Medium'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Evaluasi pengeluaran dan pemasukan selama ini untuk mempertimbangkan pengeluaran selanjutnya",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF023047),
                              fontSize: 14,
                              fontFamily: 'Barlow-Medium'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(
                          0xFFFFB703)), // Warna latar belakang tombol saat normal
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Warna teks tombol saat normal
                      // Warna latar belakang saat tombol ditekan
                    ),
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text("Mulai"),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

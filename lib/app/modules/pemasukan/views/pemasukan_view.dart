import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manov/app/routes/app_pages.dart';

import '../controllers/pemasukan_controller.dart';

class PemasukanView extends GetView<PemasukanController> {
  const PemasukanView({Key? key}) : super(key: key);
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
                    "Pemasukan Hari ini",
                    style:
                        TextStyle(fontFamily: 'Barlow-SemiBold', fontSize: 16),
                  ),
                  Text(
                    "Saldo Rp. 1.835.000",
                    style:
                        TextStyle(fontFamily: 'Barlow-SemiBold', fontSize: 14),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hari ini kamu mendapat pemasukan",
                        style: TextStyle(fontSize: 12, fontFamily: 'Barlow'),
                      ),
                      Text(
                        "Rp.590.000",
                        style: TextStyle(
                            fontSize: 12, fontFamily: 'Barlow-Medium'),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      child: Text(
                        "History",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF0D1B2A)),
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
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Ubah nilai sesuai keinginan
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            10.0), // Atur radius sudut kiri atas
                        topRight: Radius.circular(
                            10.0), // Atur radius sudut kanan atas
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        color: Color(0xFF2A9D8F),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hari ini, 09:10:12",
                              style: TextStyle(fontSize: 12),
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
                          dataPemasukan(
                            via: "Cash",
                            keterangan: "Pemberian Orang Tua",
                            nominal: "Rp. 500.000",
                          ),
                          Divider(),
                          dataPemasukan(
                            via: "BNI",
                            keterangan: "DP Pembuatan PPT dari Rizky",
                            nominal: "Rp. 30.000",
                          ),
                          Divider(),
                          dataPemasukan(
                            via: "BNI",
                            keterangan: "Hutang dari Ridho",
                            nominal: "Rp. 10.000",
                          ),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Ubah nilai sesuai keinginan
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            10.0), // Atur radius sudut kiri atas
                        topRight: Radius.circular(
                            10.0), // Atur radius sudut kanan atas
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        color: Color(0xFF2A9D8F),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hari ini, 07:10:12",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "Rp.50.000",
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
                          dataPemasukan(
                            via: "Cash",
                            keterangan: "Bantu Bawa Barang Ahmad",
                            nominal: "Rp. 50.000",
                          ),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFFFB703)), // Warna latar belakang tombol saat normal
              foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white), // Warna teks tombol saat normal
              // Warna latar belakang saat tombol ditekan
            ),
            onPressed: () {
              Get.toNamed(Routes.TRANSAKSI);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("Tambah Transaksi"),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}

class dataPemasukan extends StatelessWidget {
  const dataPemasukan({
    super.key,
    required this.via,
    required this.keterangan,
    required this.nominal,
  });
  final String via;
  final String keterangan;
  final String nominal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              child: Text(
                via,
                style: TextStyle(color: Color(0xFF777F88), fontSize: 12),
              ),
            ),
            Text(keterangan,
                style: TextStyle(color: Color(0xFF52656F), fontSize: 12))
          ],
        ),
        Text(
          nominal,
          style: TextStyle(
              fontSize: 12,
              color: Color(0xFF0D1B2A),
              fontFamily: 'Barlow-Medium'),
        )
      ],
    );
  }
}

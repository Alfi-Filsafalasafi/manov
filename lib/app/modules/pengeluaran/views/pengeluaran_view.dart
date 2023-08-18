import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/pengeluaran_controller.dart';

class PengeluaranView extends GetView<PengeluaranController> {
  const PengeluaranView({Key? key}) : super(key: key);
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
                    "Pengeluaran Hari ini",
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
                        "Hari ini kamu melakukan pengeluaran",
                        style: TextStyle(fontSize: 12, fontFamily: 'Barlow'),
                      ),
                      Text(
                        "Rp.29.500",
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
                        color: Color(0xFFE76F51),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hari ini, 08:30:12",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "Rp.18.000",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          dataPengeluaran(
                            via: "Transportasi",
                            keterangan: "Gojek Kos ke FT UM",
                            nominal: "Rp. 8.000",
                          ),
                          Divider(),
                          dataPengeluaran(
                            via: "Lainnya",
                            keterangan: "Kas Bulanan Himpunan",
                            nominal: "Rp. 10.000",
                          ),
                          Divider(),
                          GestureDetector(
                            child: Text(
                              "Nota Pembelian",
                              style: TextStyle(
                                  color: Color(0xFF023047),
                                  fontFamily: "Barlow-SemiBold",
                                  fontSize: 10),
                            ),
                          )
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
                        color: Color(0xFFE76F51),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hari ini, 07:45:12",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "Rp.11.500",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          dataPengeluaran(
                            via: "Papan",
                            keterangan: "Pembelian Pulsa",
                            nominal: "Rp. 11.500",
                          ),
                          Divider(),
                          GestureDetector(
                            child: Text(
                              "Nota Pembelian",
                              style: TextStyle(
                                  color: Color(0xFF023047),
                                  fontFamily: "Barlow-SemiBold",
                                  fontSize: 10),
                            ),
                          )
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

class dataPengeluaran extends StatelessWidget {
  const dataPengeluaran({
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

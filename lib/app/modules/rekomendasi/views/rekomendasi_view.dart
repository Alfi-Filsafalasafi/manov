import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/rekomendasi_controller.dart';

class RekomendasiView extends GetView<RekomendasiController> {
  const RekomendasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 10),
          color: Color(0xFF023047),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rekomendasi Pengeluaran Bulan Ini",
                style: TextStyle(fontFamily: 'Barlow-SemiBold', fontSize: 14),
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
                        "Keperluan diluar makan",
                        style: TextStyle(fontSize: 12, fontFamily: 'Barlow'),
                      ),
                      Text(
                        "Maksimal Rp 20.000 hari ini",
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
                        "  Atur Ulang  ",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF023047)),
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
              rekomend(
                tgl:
                    "Hari ini, ${DateFormat("dd MMMM yyyy", 'id_ID').format(DateTime.now()).replaceAll(".", "")}",
                mknPagi: "Nasi sayur lodeh tempe tahu  (Rp.10.000)",
                warungPagi: "Warung Bu Tin",
                mknSore: "Nasi ayam laos kangkung (Rp.9.000)  ",
                warungSore: "Baleluwe",
              ),
              rekomend(
                tgl:
                    "Besok, ${DateFormat("dd MMMM yyyy", 'id_ID').format(DateTime.now().add(Duration(days: 1))).replaceAll(".", "")}",
                mknPagi: "Nasi sayur bayam ikan mujair (Rp.10.000)",
                warungPagi: "Warung Barokah",
                mknSore: "Nasi ayam geprek (Rp.10.000)  ",
                warungSore: "Ayam Kisanak",
              ),
              rekomend(
                tgl:
                    "${DateFormat("dd MMMM yyyy", 'id_ID').format(DateTime.now().add(Duration(days: 2))).replaceAll(".", "")}",
                mknPagi: "Nasi ayam lalapan (Rp.10.000)",
                warungPagi: "Warung Lalapan Cemerlang",
                mknSore: "Nasi sayur sop tahu tempe (Rp.10.000)",
                warungSore: "Warung Bu Tin",
              ),
              rekomend(
                tgl:
                    "${DateFormat("dd MMMM yyyy", 'id_ID').format(DateTime.now().add(Duration(days: 3))).replaceAll(".", "")}",
                mknPagi: "Nasi Soto (Rp.10.000)",
                warungPagi: "Warung Soto Pojok",
                mknSore: "Nasi Tahu Tempe Terong (Rp.10.000)",
                warungSore: "Warung Bu Tin",
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class rekomend extends StatelessWidget {
  const rekomend({
    super.key,
    required this.tgl,
    required this.mknPagi,
    required this.warungPagi,
    required this.mknSore,
    required this.warungSore,
  });
  final String tgl;
  final String mknPagi;
  final String warungPagi;
  final String mknSore;
  final String warungSore;

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
              color: Color(0xFF219EBC),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tgl,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pagi :",
                  style: TextStyle(color: Color(0xFF777F88), fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        mknPagi,
                        style: TextStyle(
                          color: Color(0xFF023047),
                          fontFamily: 'Barlow-Medium',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF023047), // Warna garis bawah
                            width: 1.0, // Lebar garis bawah
                          ),
                        ),
                      ),
                      child: Text(
                        warungPagi,
                        style: TextStyle(
                          color: Color(0xFF023047),
                          fontFamily: 'Barlow-Medium',
                          fontSize: 12,
                          decoration: TextDecoration
                              .none, // Menghapus garis bawah default
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sore :",
                  style: TextStyle(color: Color(0xFF777F88), fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        mknSore,
                        style: TextStyle(
                          color: Color(0xFF023047),
                          fontFamily: 'Barlow-Medium',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF023047), // Warna garis bawah
                            width: 1.0, // Lebar garis bawah
                          ),
                        ),
                      ),
                      child: Text(
                        warungSore,
                        style: TextStyle(
                          color: Color(0xFF023047),
                          fontFamily: 'Barlow-Medium',
                          fontSize: 12,
                          decoration: TextDecoration
                              .none, // Menghapus garis bawah default
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

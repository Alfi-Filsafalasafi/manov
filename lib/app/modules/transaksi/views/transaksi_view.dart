import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../controllers/page_index_controller_controller.dart';
import '../controllers/transaksi_controller.dart';

class TransaksiView extends GetView<TransaksiController> {
  final pageC = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Tambah Transaksi",
                  style: TextStyle(
                      color: Color(0xFF0D1B2A),
                      fontFamily: 'Barlow-Medium',
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Anda bisa menginput data dengan teks atau suara",
                  style: TextStyle(color: Color(0xFF0D1B2A)),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TabBar(
                      unselectedLabelColor: Color(0xFF0D1B2A),
                      labelStyle: TextStyle(fontSize: 12),
                      indicator: BoxDecoration(
                          // Mengatur tampilan latar belakang tab yang aktif
                          color: Color(0xFFFFB703),
                          borderRadius: BorderRadius.circular(5)),
                      tabs: const [
                        Tab(
                          text: "Pemasukan",
                        ),
                        Tab(
                          text: "Pengeluaran",
                        )
                      ]),
                ),
                Expanded(
                  child: TabBarView(children: [
                    //ini page pemasukan
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                child: Text("Kategori",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Ganti dengan border radius yang diinginkan
                                  ),
                                  child: Obx(
                                    () => DropdownButton(
                                      isExpanded: true,
                                      value: controller.selectedValue.value,
                                      underline: Container(),
                                      onChanged: (newValue) {
                                        controller.selectedValue.value =
                                            newValue!;
                                      },
                                      items: controller.dropdownItems
                                          .map((String item) {
                                        return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Barlow'),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                child: Text("Nama",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF023047)),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(
                                              0xFF023047)), // Ganti warna border saat fokus
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 6,
                                        horizontal: 12), // Ganti warna hint
                                  ),
                                  cursorWidth: 1.5,
                                  cursorColor: Color(0xFF023047),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                child: Text("Jumlah",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF023047)),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(
                                              0xFF023047)), // Ganti warna border saat fokus
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 6,
                                        horizontal: 12), // Ganti warna hint
                                  ),
                                  cursorWidth: 1.5,
                                  cursorColor: Color(0xFF023047),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                                child: RichText(
                                  text: const TextSpan(
                                      text: "Keterangan ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Barlow'),
                                      children: [
                                        TextSpan(
                                          text: "*Opsional",
                                          style: TextStyle(
                                              color: Color(0xFF52656F),
                                              fontSize: 10,
                                              fontFamily: 'Barlow'),
                                        )
                                      ]),
                                ),
                              ),
                              const Expanded(
                                child: TextField(
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF023047)),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(
                                              0xFF023047)), // Ganti warna border saat fokus
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 6,
                                        horizontal: 12), // Ganti warna hint
                                  ),
                                  cursorWidth: 1.5,
                                  cursorColor: Color(0xFF023047),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                                child: RichText(
                                  text: const TextSpan(
                                      text: "Nota Transaksi ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Barlow'),
                                      children: [
                                        TextSpan(
                                          text: "*Opsional",
                                          style: TextStyle(
                                              color: Color(0xFF52656F),
                                              fontSize: 10,
                                              fontFamily: 'Barlow'),
                                        )
                                      ]),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Tidak ada nota yang ditambahkan",
                                        style: TextStyle(
                                          color: Color(0xFF52656F),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    OutlinedButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icon/uploadFile.png",
                                              width: 9,
                                              height: 9,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Add File",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF023047)),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: Get.width / 1.98,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      iconSize: 18,
                                      onPressed: () {},
                                      icon: Image.asset("assets/icon/mic.png")),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFFFB703),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20)),
                                      onPressed: () {},
                                      child: Text(
                                        "Tambah",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Barlow-Medium'),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "List Pengeluaran",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Barlow-Medium',
                                color: Color(0xFF0D1B2A)),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            children: [
                              dataPemasukan(
                                  via: "Cash",
                                  keterangan: "Pemberian Orang Tua",
                                  nominal: "500.000"),
                              Divider(),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "Nota Transaksi",
                                      style: TextStyle(
                                          fontFamily: 'Barlow-SemiBold',
                                          fontSize: 10,
                                          color: Color(0xFF023047)),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    //ini page pengeluaran
                    Center(
                      child: Text(
                        "Ini Page Pengeluaran",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ]),
                ),
                Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFF023047),
                            Color(0xFF0D1B2A),
                            //add more colors
                          ]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              disabledBackgroundColor: Colors.transparent,
                              disabledForegroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              //make color or elevated button transparent
                            ),
                            onPressed: () {
                              Get.defaultDialog(
                                  contentPadding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    bottom: 30,
                                  ),
                                  titlePadding: EdgeInsets.symmetric(
                                      vertical: 30, horizontal: 20),
                                  title: "Konfirmasi",
                                  titleStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Barlow-Medium',
                                  ),
                                  middleText:
                                      "Apakah anda sudah yakin ?. Silahkan Cek  Kembali agar tidak ada kesalahan",
                                  middleTextStyle: TextStyle(
                                      fontSize: 15, fontFamily: 'Barlow'),
                                  actions: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF023047),
                                          Color(0xFF0D1B2A),
                                          //add more colors
                                        ]),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            pageC.ChangePage(1);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                            disabledBackgroundColor:
                                                Colors.transparent,
                                            disabledForegroundColor:
                                                Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            //make color or elevated button transparent
                                          ),
                                          child: Text("Simpan Pemasukan",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Barlow'))),
                                    )
                                  ]);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 18,
                                bottom: 18,
                              ),
                              child: Text("Simpan Pemasukan",
                                  style:
                                      TextStyle(fontFamily: 'Barlow-Medium')),
                            )))),
              ],
            ),
          ),
        ),
      ),
    );
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

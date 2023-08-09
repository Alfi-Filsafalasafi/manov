import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Color(0xFFEC2028),
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(fontSize: 18),
            children: [
              TextSpan(
                text: "Muhammad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 30,
              height: 30,
              child: Image.asset(
                "assets/icon/qrcode.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "085232842550",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Image.asset("assets/logo/simpati.png"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Sisa Pulsa Anda",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 64.000",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFF7B731),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.black),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Berlaku sampai",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: " 9 April 2023",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Telkomsel POIN",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "94",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                            title: "Internet",
                            data: "12.16",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telpon",
                            data: "0",
                            satuan: "Min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "36",
                            satuan: "SMS",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 7,
                  color: Color(0xFFF1F2F6),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        //body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1E272E),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MenuItem(
                                    icon: "assets/icon/internetk.png",
                                    title: "Internet",
                                  ),
                                  MenuItem(
                                    icon: "assets/icon/telponk.png",
                                    title: "Telpon",
                                  ),
                                  MenuItem(
                                    icon: "assets/icon/smsk.png",
                                    title: "SMS",
                                  ),
                                  MenuItem(
                                    icon: "assets/icon/roamingk.png",
                                    title: "Roaming",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MenuItem(
                                    icon: "assets/icon/hiburank.png",
                                    title: "Hiburan",
                                  ),
                                  MenuItem(
                                    icon: "assets/icon/unggulank.png",
                                    title: "Unggulan",
                                  ),
                                  MenuItem(
                                    icon: "assets/icon/tersimpank.png",
                                    title: "Tersimpan",
                                  ),
                                  MenuItem(
                                    icon: "assets/icon/riwayatk.png",
                                    title: "riwayat",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Terbaru dari Telkomsel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1E272E),
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFEC2028),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    itemKategori(
                                      image: "assets/image/img1.png",
                                    ),
                                    itemKategori(
                                      image: "assets/image/img2.png",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                        //navigasi
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                status: true,
                                icon: "beranda",
                                title: "Beranda",
                              ),
                              ItemNav(
                                status: false,
                                icon: "riwayat",
                                title: "Riwayat",
                              ),
                              ItemNav(
                                status: false,
                                icon: "bantuan",
                                title: "Bantuan",
                              ),
                              ItemNav(
                                status: false,
                                icon: "inbox",
                                title: "Inbox",
                              ),
                              ItemNav(
                                status: false,
                                icon: "akunsaya",
                                title: "Akun saya",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class itemKategori extends StatelessWidget {
  const itemKategori({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(
            "$icon",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "$title",
          style: TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 22,
          child: Image.asset((status == true)
              ? "assets/icon/$icon-active.png"
              : "assets/icon/$icon.png"),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "$title",
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEC2028),
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF747D8C),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
          child: ListView(),
        )
      ],
    ));
  }
}

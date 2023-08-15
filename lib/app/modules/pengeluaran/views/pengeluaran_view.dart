import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pengeluaran_controller.dart';

class PengeluaranView extends GetView<PengeluaranController> {
  const PengeluaranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PengeluaranView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PengeluaranView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

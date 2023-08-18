import 'package:get/get.dart';

import '../modules/grafik/bindings/grafik_binding.dart';
import '../modules/grafik/views/grafik_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/listHariIni/bindings/list_hari_ini_binding.dart';
import '../modules/listHariIni/views/list_hari_ini_view.dart';
import '../modules/pemasukan/bindings/pemasukan_binding.dart';
import '../modules/pemasukan/views/pemasukan_view.dart';
import '../modules/pengeluaran/bindings/pengeluaran_binding.dart';
import '../modules/pengeluaran/views/pengeluaran_view.dart';
import '../modules/rekomendasi/bindings/rekomendasi_binding.dart';
import '../modules/rekomendasi/views/rekomendasi_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/transaksi/bindings/transaksi_binding.dart';
import '../modules/transaksi/views/transaksi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.LIST_HARI_INI,
      page: () => ListHariIniView(),
      binding: ListHariIniBinding(),
    ),
    GetPage(
      name: _Paths.GRAFIK,
      page: () => GrafikView(),
      binding: GrafikBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.REKOMENDASI,
      page: () => const RekomendasiView(),
      binding: RekomendasiBinding(),
    ),
    GetPage(
      name: _Paths.TRANSAKSI,
      page: () => TransaksiView(),
      binding: TransaksiBinding(),
    ),
    GetPage(
      name: _Paths.PEMASUKAN,
      page: () => const PemasukanView(),
      binding: PemasukanBinding(),
    ),
    GetPage(
      name: _Paths.PENGELUARAN,
      page: () => const PengeluaranView(),
      binding: PengeluaranBinding(),
    ),
  ];
}

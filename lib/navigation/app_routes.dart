import 'package:flutter/material.dart';

import '../pages/halaman_detail_layanan.dart';
import '../pages/halaman_pengaturan_kota.dart';
import '../pages/halaman_tentang.dart';
import '../pages/halaman_riwayat_laporan.dart';
import 'kerangka_navigasi.dart';

class AppRoutes {
  static const String beranda = '/';

  static const String detail = '/detail';

  static const String pengaturan = '/pengaturan';

  static const String tentang = '/tentang';

  static const String riwayat = '/riwayat';

  static Map<String, WidgetBuilder> daftarRoute() {
    return {
      beranda: (context) => const KerangkaNavigasi(),

      pengaturan: (context) => const HalamanPengaturanKota(),

      tentang: (context) => const HalamanTentang(),

      riwayat: (context) => const HalamanRiwayatLaporan(),
    };
  }

  static Route<dynamic>? bentukRoute(RouteSettings settings) {
    if (settings.name == detail) {
      final data = settings.arguments as Map<String, String>? ?? {};

      return MaterialPageRoute(
        builder: (context) => HalamanDetailLayanan(
          nama: data['nama'] ?? '',

          dinas: data['dinas'] ?? '',

          jam: data['jam'] ?? '',

          keterangan: data['keterangan'] ?? '',
        ),
      );
    }

    return null;
  }

  static Route<dynamic> routeTidakDikenal(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: const Text('Route Tidak Ditemukan')),

        body: Center(child: Text('Route ${settings.name} tidak tersedia')),
      ),
    );
  }
}

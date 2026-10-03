import 'package:flutter/foundation.dart';


class PengajuanModel extends ChangeNotifier {

  final List<String> _pengajuan = [];


  List<String> get pengajuan => _pengajuan;


  int get totalPengajuan => _pengajuan.length;



  void tambahPengajuan(String layanan) {

    _pengajuan.add(layanan);

    notifyListeners();

  }

}
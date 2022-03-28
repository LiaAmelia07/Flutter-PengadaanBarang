import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/barang_keluar_model.dart';

class BarangKeluarService {
  static Future<BarangKeluarModel> fetchBarangKeluarData() async {
    final response = await http.get(
        Uri.parse('https://pengadaan-barang-sekolah.herokuapp.com/api/barangKeluar'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangKeluarModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/barang_masuk_model.dart';

class BarangMasukService {
  static Future<BarangMasukModel> fetchBarangMasukData() async {
    final response = await http.get(
        Uri.parse('https://pengadaan-barang-sekolah.herokuapp.com/api/barangMasuk'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangMasukModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}

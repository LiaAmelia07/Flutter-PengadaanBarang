class BarangModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangModel({
    required this.success, required this.message, required this.data});

  BarangModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? kodeBarang;
  String? nama;
  int? qty;
  String? tanggal;
  String? kategori;
  String? satuan;
  String? ket;

  Data(
      {
      required this.kodeBarang,
      required this.nama,
      required this.qty,
      required this.tanggal,
      required this.kategori,
      required this.satuan,
      required this.ket});

  Data.fromJson(Map<String, dynamic> json) {
    kodeBarang = json['kode_barang'];
    nama = json['nama'];
    qty = json['qty'];
    tanggal = json['tanggal'];
    kategori = json['kategori'];
    satuan = json['satuan'];
    ket = json['ket'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_barang'] = this.kodeBarang;
    data['nama'] = this.nama;
    data['qty'] = this.qty;
    data['tanggal'] = this.tanggal;
    data['kategori'] = this.kategori;
    data['satuan'] = this.satuan;
    data['ket'] = this.ket;
    return data;
  }
}

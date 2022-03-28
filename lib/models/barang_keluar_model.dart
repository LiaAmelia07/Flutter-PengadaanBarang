class BarangKeluarModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangKeluarModel({required this.success, required this.message, required this.data});

  BarangKeluarModel.fromJson(Map<String, dynamic> json) {
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
  String? kodeBarangKeluar;
  String? barang;
  int? qty;
  String? ket;
  String? user;

  Data({required this.kodeBarangKeluar, required this.barang, required this.qty, required this.ket, required this.user});

  Data.fromJson(Map<String, dynamic> json) {
    kodeBarangKeluar = json['kode_barang_keluar'];
    barang = json['barang'];
    qty = json['qty'];
    ket = json['ket'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_barang_keluar'] = this.kodeBarangKeluar;
    data['barang'] = this.barang;
    data['qty'] = this.qty;
    data['ket'] = this.ket;
    data['user'] = this.user;
    return data;
  }
}

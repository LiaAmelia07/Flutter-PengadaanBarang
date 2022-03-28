class BarangMasukModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangMasukModel({this.success, this.message, this.data});

  BarangMasukModel.fromJson(Map<String, dynamic> json) {
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
  String? kodeBarangMasuk;
  String? barang;
  int? qty;
  String? tanggalMasuk;
  String? supplier;
  String? satuan;
  String? user;
  String? pengajuan;
  int? harga;
  int? perkiraanBiaya;

  Data(
      {this.kodeBarangMasuk,
      this.barang,
      this.qty,
      this.tanggalMasuk,
      this.supplier,
      this.satuan,
      this.user,
      this.pengajuan,
      this.harga,
      this.perkiraanBiaya});

  Data.fromJson(Map<String, dynamic> json) {
    kodeBarangMasuk = json['kode_barang_masuk'];
    barang = json['barang'];
    qty = json['qty'];
    tanggalMasuk = json['tanggal_masuk'];
    supplier = json['supplier'];
    satuan = json['satuan'];
    user = json['user'];
    pengajuan = json['pengajuan'];
    harga = json['harga'];
    perkiraanBiaya = json['perkiraan_biaya'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_barang_masuk'] = this.kodeBarangMasuk;
    data['barang'] = this.barang;
    data['qty'] = this.qty;
    data['tanggal_masuk'] = this.tanggalMasuk;
    data['supplier'] = this.supplier;
    data['satuan'] = this.satuan;
    data['user'] = this.user;
    data['pengajuan'] = this.pengajuan;
    data['harga'] = this.harga;
    data['perkiraan_biaya'] = this.perkiraanBiaya;
    return data;
  }
}

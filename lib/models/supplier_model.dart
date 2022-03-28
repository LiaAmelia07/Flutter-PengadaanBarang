class SupplierModel {
  bool? success;
  String? message;
  List<Data>? data;

  SupplierModel({required this.success, required this.message, required this.data});

  SupplierModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? namaSupplier;
  String? noTelepon;
  String? alamat;
  String? createdAt;
  String? updatedAt;
  int? harga;
  String? ket;

  Data(
      {required this.id,
      required this.namaSupplier,
      required this.noTelepon,
      required this.alamat,
      required this.createdAt,
      required this.updatedAt,
      required this.harga,
      required this.ket});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaSupplier = json['nama_supplier'];
    noTelepon = json['no_telepon'];
    alamat = json['alamat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    harga = json['harga'];
    ket = json['ket'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_supplier'] = this.namaSupplier;
    data['no_telepon'] = this.noTelepon;
    data['alamat'] = this.alamat;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['harga'] = this.harga;
    data['ket'] = this.ket;
    return data;
  }
}

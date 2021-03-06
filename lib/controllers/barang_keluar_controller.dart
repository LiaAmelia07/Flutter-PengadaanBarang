import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pengadaanbarang/services/barang_keluar_service.dart';

import '../models/barang_keluar_model.dart';

class BarangKeluarController extends GetxController {
  var barangKeluarList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBarangKeluarData();
  }

  void fetchBarangKeluarData() async {
    try {
      isLoading(true);
      var barangKeluar = await BarangKeluarService.fetchBarangKeluarData();
      barangKeluarList.value = barangKeluar.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}

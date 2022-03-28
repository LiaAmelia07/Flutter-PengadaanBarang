import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:pengadaanbarang/controllers/barang_keluar_controller.dart';

class BarangKeluarScreen extends StatelessWidget {
  const BarangKeluarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BarangKeluarController barangkeluarcontroller =
        Get.put(BarangKeluarController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'DATA BARANG Keluar',
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Obx(
              () => barangkeluarcontroller.isLoading()
                  ? Center(child: const CircularProgressIndicator())
                  : Center(
                      child: ListView.builder(
                      itemCount: barangkeluarcontroller.barangKeluarList.length,
                      itemBuilder: (content, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 320,
                              height: 180,
                              margin: EdgeInsets.only(bottom: 8, top: 8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Color.fromARGB(255, 14, 116, 3),
                                    Color.fromARGB(255, 35, 193, 40),
                                    Color.fromARGB(255, 2, 147, 7)
                                  ],
                                  center: Alignment(0.9, -0.8),
                                  focal: Alignment(0.3, -0.5),
                                  focalRadius: 2.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(95, 63, 63, 63),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Kode Barang Keluar: ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangkeluarcontroller
                                              .barangKeluarList[index]
                                              .kodeBarangKeluar
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Nama barang : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangkeluarcontroller
                                              .barangKeluarList[index].barang
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Penerima : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangkeluarcontroller
                                              .barangKeluarList[index].user
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Jumlah Masuk : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangkeluarcontroller
                                              .barangKeluarList[index].qty
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Keterangan Barang : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangkeluarcontroller
                                              .barangKeluarList[index].ket
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )),
            ),
          ),
        ),
      ),
    );
  }
}

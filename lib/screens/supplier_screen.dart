import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:pengadaanbarang/controllers/supplier_controller.dart';

class SupplierScreen extends StatelessWidget {
  const SupplierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SupplierController suppliercontroller = Get.put(SupplierController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'SUPPLIER',
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Obx(
              () => suppliercontroller.isLoading()
                  ? Center(child: const CircularProgressIndicator())
                  : Center(
                      child: ListView.builder(
                      itemCount: suppliercontroller.supplierList.length,
                      itemBuilder: (content, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 320,
                              height: 147,
                              margin: EdgeInsets.only(bottom: 8, top: 8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Color.fromARGB(255, 51, 75, 255),
                                    Colors.blue,
                                    Color.fromARGB(255, 131, 187, 255)
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
                                          suppliercontroller
                                              .supplierList[index].namaSupplier
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 23,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Nomor Telepon : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          suppliercontroller
                                              .supplierList[index].noTelepon
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
                                          "Alamat : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          suppliercontroller
                                              .supplierList[index].alamat
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Harga Barang : Rp.",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          suppliercontroller
                                              .supplierList[index].harga
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Keterangan : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          suppliercontroller
                                              .supplierList[index].ket
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
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

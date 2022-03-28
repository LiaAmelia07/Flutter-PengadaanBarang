import 'package:flutter/material.dart';
import 'menu1_screen.dart';

class HomeScreen extends StatelessWidget {
  final Shader _linearGradient = LinearGradient(
    colors: [Colors.greenAccent, Colors.white],
  ).createShader(Rect.fromLTWH(160, 160, 10, 10));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'PENGADAAN BARANG',
          style: TextStyle(
              fontSize: 25, foreground: Paint()..shader = _linearGradient),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/wallpaper.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 420,
                        height: 70,
                        margin: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Selamat Datang Di Aplikasi Pengadaan Barang",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                      Container(
                        width: 420,
                        height: 240,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Text(
                          "       Dengan aplikasi Pengadaan Barang ini kita bisa dengan mudah mengatur barang baik dari stok dan arus keluar masuk nya, tanpa harus ribet menggunakan buku lagi untuk mencatatnya.",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        margin: EdgeInsets.all(25),
                        child: ElevatedButton(
                            child: Text("Mulai Aplikasi ^_^"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MenuScreen()),
                              );
                            }),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

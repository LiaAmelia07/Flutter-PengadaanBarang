import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengadaanbarang/controller_bindings.dart';
import 'package:pengadaanbarang/main_screen.dart';
import 'package:pengadaanbarang/home_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
          navigateRoute: Container(
            child: MainScreen(),
          ),
          duration: 4000,
          imageSize: 400,
          imageSrc: "assets/img/logos.jpeg",
          backgroundColor: Colors.white,
          text: "",
          textType: TextType.ColorizeAnimationText,
          textStyle: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          colors: [
            Colors.blue,
            Colors.blue,
            Colors.white,
            Colors.blue,
          ]),
    );
  }
}

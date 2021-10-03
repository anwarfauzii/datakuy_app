import 'dart:async';
import 'package:datakuy_app/shared/shared.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenstart();
  }

  splashscreenstart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.toNamed('/start');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: Scaffold(
        backgroundColor: HexColor('e2e2e2'),
        body: Center(
          child: Container(
            width: 350,
            height: 350,
            child: logo_datakuy,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

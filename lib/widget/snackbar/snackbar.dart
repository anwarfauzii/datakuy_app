import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> snackbar()async{
  Get.snackbar("Peringatan !", "Ada Kesalahan Pada Data Anda",
  icon: Icon(Icons.add_alert_sharp),
  shouldIconPulse: true,
  backgroundColor: Colors.white,
  barBlur: 20,
  isDismissible: true,
  duration: Duration(seconds: 3),);
}
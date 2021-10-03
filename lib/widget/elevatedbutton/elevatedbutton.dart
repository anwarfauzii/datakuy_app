import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}

ElevatedButton elevatedlogout = ElevatedButton(
  child: Text("Log Out"),
  onPressed: () {
    _signOut().then((value) => Get.defaultDialog(
        onConfirm: () {
          Get.offAndToNamed('/start');
        },
        onCancel: () {},
        middleText: "Apakah Anda Yakin ingin Keluar ?"));
  },
);

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}

Container containerheader = Container(
  height: 80,
  decoration: BoxDecoration(color: Colors.lightBlue.shade300),
  child: Row(
    children: [
      Image.asset('assets/images/DataKuy-white.png', height: 90, width: 90),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello,",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
          Text("${Get.parameters['email']}",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600)),
        ],
      )
    ],
  ),
);

Container containerheaderlogout = Container(
  height: 80,
  color: Colors.lightBlue.shade300,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset('assets/images/DataKuy-white.png', height: 90, width: 90),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello,",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Text("${Get.parameters['email']}",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
            ],
          )
        ],
      ),
      InkWell(
        child: Row(
          children: [
            Text("Keluar",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600)),
            Icon(Icons.logout, size: 18),
            SizedBox(width: 15),
          ],
        ),
        onTap: () {
          _signOut().then((value) => Get.defaultDialog(
              onConfirm: () {
                Get.offAndToNamed('/start');
              },
              onCancel: () {},
              middleText: "Apakah Anda Yakin ingin Keluar ?"));
        },
      ),
    ],
  ),
);

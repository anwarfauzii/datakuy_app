import 'package:datakuy_app/widget/bottomsheet/bottomsheet.dart';
import 'package:datakuy_app/widget/floatingaction/floatingaction.dart';
import 'package:datakuy_app/widget/text/text_style.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

InkWell baru = InkWell(
  child: Container(
    padding: EdgeInsets.all(10),
    height: 80,
    width: 335,
    decoration: BoxDecoration(
        color: HexColor('F2EFEF'), borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Update terbaru DataKuy",
            style: poppins16),
        Text(
            "Telah Hadir Data Kuy versi 5.0.5, pada versi ini kami menghadirkan fitur"),
      ],
    ),
  ),
  onTap: () {
    Get.toNamed('/unknown');
  },
);

class PesanPage extends StatelessWidget {
  const PesanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text('Pesan',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: HexColor('3D3E3B'))),
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
              baru,
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
      floatingActionButton: floatingbutton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomSheet: bottomsheet,
    );
  }
}

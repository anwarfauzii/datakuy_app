import 'package:datakuy_app/widget/button/button_style.dart';
import 'package:datakuy_app/widget/container/container.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailScreen extends StatefulWidget {
  final List? value;
  DetailScreen({Key? key, required this.value}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState(value);
}

class _DetailScreenState extends State<DetailScreen> {
  List<Color> _colors = [HexColor('0066FF'), HexColor('FEFEFE')];
  List<double> _stops = [0.1, 0.8];
  List? value;
  _DetailScreenState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            containerheader,
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: _colors, stops: _stops),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 350,
                    child: Text("  Data Sekolah",
                        style: poppins30),
                  ),
                  SizedBox(height: 20),
                  Text(value![0],
                      style: poppins18),
                  Text("NPSN     : " + value![1].toString(),
                      style: poppins9),
                  Text("Tingkat : " + value![9] + " "+value![8],
                      style: poppins9),
                  Divider(height: 5, thickness: 2),
                  SizedBox(height: 12),
                  Text('Alamat :',
                      style: poppins16),
                  Divider(thickness: 2, endIndent: 250, height: 8),
                  Text("" + value![2],
                      style: poppins14),
                  Text("Desa : " + value![4],
                      style: poppins14),
                  Text("Kecamatan : " + value![5],
                      style: poppins14),
                  Text("Kabupaten : " + value![6],
                      style: poppins14),
                  Text("Provinsi : " + value![7],
                      style: poppins14),
                  Text("Kode Pos : ( " + value![3].toString()+" )",
                      style: poppins14),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: loginbutton,
                        child: Text("Kembali"),
                        onPressed: () {
                          Get.back();
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

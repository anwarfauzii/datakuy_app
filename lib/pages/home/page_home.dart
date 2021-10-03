import 'package:datakuy_app/shared/shared.dart';
import 'package:datakuy_app/widget/bottomsheet/bottomsheet.dart';
import 'package:datakuy_app/widget/container/container.dart';
import 'package:datakuy_app/widget/floatingaction/floatingaction.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              containerheader,
              SingleChildScrollView(
                child: Container(
                  height: 626,
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 287,
                            height: 144,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue.shade400,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/ponsel.png',
                                ),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('DataKuy Slide',
                                          style: font18),
                                      SizedBox(height: 10),
                                      Text('Berisikan Sekilas tentang',
                                          style: font12),
                                      Text('berita yang berada di DataKuy',
                                          style: font12),
                                      SizedBox(height: 20),
                                      Image.asset(
                                          'assets/images/googleplay.png')
                                    ])
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('DataKuy Pendidikan',
                                    style: poppins18),
                                Text('Lokasi Lokasi instansi Pendidikan',
                                    style: poppins10),
                              ],
                            ),
                            TextButton(
                              child: Text('Selengkapnya . . .',
                                  style: poppins12orange),
                              onPressed: () {
                                Get.toNamed('/content');
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 60,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.shade300,borderRadius: BorderRadius.circular(10) ),
                        child: Column(
                          children: [
                            Text(
                              "Total Sekolah di Indonesia",
                              style: poppins20,
                            ),
                            Text("307.655",
                                style: poppins16),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 65,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Text("SD",
                                    style: poppins20),
                                Text("148.246",
                                    style: poppins16),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 65,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Text("SMP",
                                    style: poppins20),
                                Text("39.010",
                                    style: poppins16),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 65,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Text("SMA",
                                    style: poppins20),
                                Text("13.495",
                                    style: poppins16),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('Terima Kasih',
                                  style: poppins16),
                              Text('kontak saya',
                                  style: poppins16),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  InkWell(
                                    child: logo_instagram,
                                        onTap: (){
                                          launch('https://www.instagram.com/anwarfauzi668');
                                        },
                                  ),
                                  SizedBox(width: 15),
                                  InkWell(
                                    child: logo_telegram,
                                        onTap: (){
                                          launch('https://t.me/@anwar_fauzi');
                                        },
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: floatingbutton,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomSheet: bottomsheet,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

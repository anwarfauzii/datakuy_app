import 'package:datakuy_app/shared/shared.dart';
import 'package:datakuy_app/widget/bottomsheet/bottomsheet.dart';
import 'package:datakuy_app/widget/container/container.dart';
import 'package:datakuy_app/widget/elevatedbutton/elevatedbutton.dart';
import 'package:datakuy_app/widget/floatingaction/floatingaction.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Account",
      home: Scaffold(
          body: Container(
            child: Column(
              children: [
                containerheader,
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: logo_anwar),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Anwar Fauzi", style: poppins18abu),
                                    Text('   (Pembuat Aplikasi)',
                                        style: poppins9),
                                  ],
                                ),
                                Text('Email : Anwarfauzi2608@gmail.com',
                                    style: poppins10abu),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          decoration: BoxDecoration(
                              color: HexColor('E5E5E5'),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Portofolio", style: font14),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        logo_flutter,
                                        Text('Flutter', style: poppins12abu)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        logo_laravel,
                                        Text('Laravel', style: poppins12abu)
                                      ],
                                    ),
                                    InkWell(
                                      child: Column(
                                        children: [
                                          logo_gitlab,
                                          Text(
                                            'Gitlab',
                                            style: poppins12abu,
                                          )
                                        ],
                                      ),
                                      onTap: () {
                                        launch(
                                            'https://gitlab.com/anwar_fauzi');
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          decoration: BoxDecoration(
                              color: HexColor('E5E5E5'),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact", style: font14),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      child: Column(
                                        children: [
                                          logo_whatsapp,
                                          Text('WhatsApp', style: poppins12abu)
                                        ],
                                      ),
                                      onTap: () {
                                        launch('https://wa.me/+6285722122963');
                                      },
                                    ),
                                    InkWell(
                                      child: Column(
                                        children: [
                                          logo_telegram2,
                                          Text('Telegram', style: poppins12abu)
                                        ],
                                      ),
                                      onTap: () {
                                        launch('https://t.me/@anwar_fauzi');
                                      },
                                    ),
                                    InkWell(
                                      child: Column(
                                        children: [
                                          logo_gmail,
                                          Text('Gmail', style: poppins12abu)
                                        ],
                                      ),
                                      onTap: () {
                                        launch(
                                            'mailto:anwarfauzi2608@gmail.com?subject=Support mail= Hai saya Satpol');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        elevatedlogout
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: floatingbutton,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          bottomSheet: bottomsheet),
      debugShowCheckedModeBanner: false,
    );
  }
}

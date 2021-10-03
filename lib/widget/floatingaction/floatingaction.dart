import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

final email = Get.find();

final FloatingActionButton floatingbutton = FloatingActionButton(
  child: Icon(
    Icons.dashboard_customize_rounded,
    color: Colors.black,
  ),
  backgroundColor: Colors.white,
  onPressed: () {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(color: Colors.white),
        height: 280,
        child: Container(
          margin: EdgeInsets.all(15),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            childAspectRatio: 1.491,
            mainAxisSpacing: 14,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(color: HexColor('F5F5F5')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart),
                      Text(
                        'Perdagangan',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: HexColor('8F8F8F'),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){Get.toNamed('unknown');},
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(color: HexColor('F5F5F5')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school_sharp),
                      Text(
                        'Pendidikan',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: HexColor('8F8F8F'),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){Get.toNamed('unknown');},
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(color: HexColor('F5F5F5')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school),
                      Text(
                        'Pemerintahan',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: HexColor('8F8F8F'),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){Get.toNamed('unknown');},
              ),
                            InkWell(
                child: Container(
                  decoration: BoxDecoration(color: HexColor('F5F5F5')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school),
                      Text(
                        'Lain - Lain',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: HexColor('8F8F8F'),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){Get.toNamed('unknown');},
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(color: HexColor('F5F5F5')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school_sharp),
                      Text(
                        'Lain - Lain',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: HexColor('8F8F8F'),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){Get.toNamed('unknown');},
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(color: HexColor('F5F5F5')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.hotel_sharp),
                      Text(
                        'Rumah Sakit',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: HexColor('8F8F8F'),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){Get.toNamed('unknown');},
              ),

            ],
          ),
        ),

        // child: Padding(
        //   padding: EdgeInsets.only(bottom: 80
        //       // MediaQuery.of(context).viewInsets.bottom
        //       ),
        //   child: Container(
        //       padding: EdgeInsets.symmetric(horizontal: 30),
        //       color: Colors.white,
        //       child: SizedBox(
        //         height: 280,
        //         child: GridView.count(
        //           crossAxisCount: 3,
        //           crossAxisSpacing: 21,
        //           childAspectRatio: 1.491,
        //           mainAxisSpacing: 14,
        //           children: [
        //          ],
        //         ),
        //       )),
        // ),
      ),
    );
  },
);

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

final BottomSheet bottomsheet = BottomSheet(
    onClosing: () {},
    builder: (context) {
      return Container(      
          height: 70,
          decoration: BoxDecoration(color: HexColor('E2E2E2')),
          child: GridView.count(
            crossAxisCount: 5,
            children: [
              MaterialButton(
                onPressed: () {
                  Get.toNamed('/home?email=email');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: HexColor('8F8F8F'),
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.toNamed('/notif');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Icon(
                      Icons.chat_bubble_sharp,
                      color: Colors.black,
                    ),
                    Text(
                      'Pesan',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: HexColor('8F8F8F'),
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(width: 1),
              MaterialButton(
                onPressed: () {
                  Get.toNamed('/faq');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Icon(Icons.help_center_rounded, color: Colors.black),
                    Text(
                      'FAQ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: HexColor('8F8F8F')),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.toNamed('/profile?email=${Get.parameters['email']}');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: HexColor('8F8F8F')),
                    )
                  ],
                ),
              ),
            ],
          ),
        
      );
    });

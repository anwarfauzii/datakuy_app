import 'package:datakuy_app/shared/shared.dart';
import 'package:datakuy_app/widget/button/button_style.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 80),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logo_datakuy
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 60,
              child: ElevatedButton(
                style: loginbutton,
                child: Text('Daftar',
                    style:poppins20),
                onPressed: () {
                  Get.toNamed('/register');
                },
              ),
            ),
            SizedBox(height: 10),
            Text('Atau', style: poppins20),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 60,
              child: ElevatedButton(
                style: loginbutton,
                child: Text('Login',
                    style: poppins20),
                onPressed: () {
                  Get.toNamed('/login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

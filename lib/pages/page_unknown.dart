import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halaman ini masih uji coba'),
            ElevatedButton(
              child: Text('Back'),
              onPressed: () {
                Get.back();
              },
            )
          ],
        )),
      ),
    );
  }
}

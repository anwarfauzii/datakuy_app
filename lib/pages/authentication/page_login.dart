import 'package:datakuy_app/widget/button/button_style.dart';
import 'package:datakuy_app/widget/snackbar/snackbar.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/DataKuy-transparent.png',
                height: 165,
                width: 165,
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Text("Selamat Datang",
                    style: poppins20),
                SizedBox(height: 5),
                Text("Login Dulu Kuy !",
                    style: poppins20),
              ],
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Email"),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Password"),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Belum Punya Akun?',
                          style: poppins12abu),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/register');
                          },
                          child: Text(
                            'Daftar',
                            style: poppins12orange),
                          ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed('/unknown');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: poppins12orange
                      ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              width: 300,
              child: ElevatedButton(
                style: loginbutton,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () async {
                  try {
                    await _firebaseAuth
                        .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) => Get.toNamed('/home?email=${emailController.text}'));
                  } catch (err) {
                    snackbar();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

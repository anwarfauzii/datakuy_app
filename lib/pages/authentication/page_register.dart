import 'package:datakuy_app/pages/authentication/page_login.dart';
import 'package:datakuy_app/widget/button/button_style.dart';
import 'package:datakuy_app/widget/snackbar/snackbar.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
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
            Text("Pelanggan Baru ?", style: poppins20,),
            SizedBox(height: 5),
            Text("Daftar Dulu Kuy !", style:poppins20),
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
                    labelText: "Password",
                    ),
                
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(()=>LoginPage());
                    },
                    child: Text('Sudah Punya Akun?',
                        style: poppins12abu)),
                TextButton(
                    onPressed: () {
                      Get.to(()=>LoginPage());
                    },
                    child: Text('Login',
                        style: poppins12orange)),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              width: 300,
              child: ElevatedButton(
                style: loginbutton,
                child: Text(
                  'Daftar',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: ()async {
                  try{
                        await _firebaseAuth.createUserWithEmailAndPassword(
                    email: emailController.text, password: passwordController.text).
                    then((value) => Get.toNamed('/home?email=${emailController.text}'));
                  }
                  catch(err){
                    await snackbar();
                  }
              
                },
              ),
            ),
          ],
        ),
      ),
    
    );
  }
}
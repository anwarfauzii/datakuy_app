import 'package:datakuy_app/pages/account/page_account.dart';
import 'package:datakuy_app/pages/authentication/page_login.dart';
import 'package:datakuy_app/pages/authentication/page_register.dart';
import 'package:datakuy_app/pages/content/page_content.dart';
import 'package:datakuy_app/pages/faq/page_faq.dart';
import 'package:datakuy_app/pages/home/page_home.dart';
import 'package:datakuy_app/pages/page_get_started_screen.dart';
import 'package:datakuy_app/pages/page_splash_screen.dart';
import 'package:datakuy_app/pages/page_unknown.dart';
import 'package:datakuy_app/pages/pesan/page_pesan.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async{
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

     initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>SplashScreen(),),
        GetPage(name: '/start', page: ()=>GetStarted()),
        GetPage(name: '/login', page: ()=>LoginPage()),
        GetPage(name: '/register', page: ()=>RegisterPage()),
        GetPage(name: '/home', page: ()=>HomePage()),
        GetPage(name: '/notif', page: ()=>PesanPage()),
        GetPage(name: '/faq', page: ()=>FaqPage()),
        GetPage(name: '/profile', page: ()=>AccountPage()),
        GetPage(name: '/unknown', page: ()=>UnknownPage()),
        GetPage(name: '/content', page: ()=>GetDataScreen())
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:latihan_ukl/pages/cinemapage.dart';
import 'package:latihan_ukl/pages/homepage.dart';
import 'package:latihan_ukl/pages/registerpage.dart';
import 'package:latihan_ukl/pages/splasspage.dart';
import 'package:latihan_ukl/pages/tiketkupage.dart';
import 'package:latihan_ukl/pages/tiketpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/cinema': (context) => CinemaPage(),
        '/tiket': (context) => TiketPage(),
        '/tiketku': (context) =>  TiketkuPage(),
      },
    );
  }
}
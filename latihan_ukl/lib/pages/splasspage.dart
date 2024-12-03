import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/register');
    });
    return Scaffold(
      backgroundColor: Colors.blue[900], // Latar belakang biru tua
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar di tengah
              Image.asset(
                'assets/koin.png', // Pastikan file gambar ada di folder assets
                width: 170,
              ),
              SizedBox(height: 20), // Jarak antara gambar dan teks
              // Judul aplikasi
              Text(
                'TIX VIP, lebih seru, koin melimpah, dapat hadiah!',
                style: TextStyle(
                  color: Colors.white, // Warna teks putih
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10), // Jarak antara judul dan subjudul
              // Subjudul
              Text(
                'Gabung TIX VIP dan kumpulkan koin untuk mendapatkan hadiah dan diskon.',
                style: TextStyle(
                  color: Colors.white70, // Warna teks putih keabu-abuan
                  fontSize: 16,
                ),
                textAlign: TextAlign.center, // Teks subjudul rata tengah
              ),
            ],
          ),
        ),
      ),
    );
  }
}
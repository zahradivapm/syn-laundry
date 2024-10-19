import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syn_laundry/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // memanggil fungsi apa yang pertama kali dijalankan saat class ini dipanggil
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //panggil function yang akan dijalankan saat class ini dipanggil
    movinPage();
  }

  //fungsi berpindah halaman setelah beberapa detik
  void movinPage() {
    Timer(Duration(seconds: 2), () {
      //panggil fungsi navigator untuk pindah halamaman
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/Logo.png'),
      ),
    );
  }
}

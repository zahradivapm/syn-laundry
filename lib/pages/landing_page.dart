import 'package:flutter/material.dart';
import 'package:syn_laundry/pages/beranda_page.dart';
import 'package:syn_laundry/pages/list_order_page.dart';
import 'package:syn_laundry/pages/profil_page.dart';
import 'package:syn_laundry/themes/themes.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //siapkan variabel sbg wadah nilai awal index
  int selectedIndex = 0;

  //siapkan variabel untuk menampung screen atau page yang akan dipakai
  static List<Widget> screenList = [
    BerandaPage(), //index 0
    ListOrderPage(), //index 1
    ProfilPage(), //index 2
  ];

  //buat fungsi tap
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //index 0
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),

          //index  1
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "Pesanan"),

          //index 2
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],

        //atribut konfigurasi bottom navigation bar nya
        currentIndex: selectedIndex, //index yang terpilih
        selectedItemColor: primaryColor, //warna saat item terpilih
        unselectedItemColor: greyColor, //warna saat item tidak terpilih
        onTap: onItemTapped, //saat item ditap
        backgroundColor: whiteColor, //warna background
        type: BottomNavigationBarType
            .fixed, //tipe bottomnavigation, agar tidak saling menggeser
      ),
      body: screenList.elementAt(selectedIndex),
    );
  }
}

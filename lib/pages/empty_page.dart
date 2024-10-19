import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menggunakan SizedBox untuk mengatur posisi gambar lebih tinggi
            SizedBox(height: 0), // Jarak antara bagian atas dan gambar
            Image.asset('assets/img-empty.png'),
            SizedBox(height: 10), // Jarak antara gambar dan teks
            Text(
              "Belum Ada",
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),

            // Menggunakan Padding untuk menggeser teks ke kanan
            Padding(
              padding: EdgeInsets.only(right: 10), // Geser teks ke kanan
              child: Text(
                "Pesanan...",
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

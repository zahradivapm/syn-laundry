import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 0),
            Image.asset('assets/img-sukses.png'),
            SizedBox(height: 10),
            Text(
              "Hore Pesanan Telah Terkonfirmasi",
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              "Tim kami akan segera menjemput",
              style: secondaryTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            Text(
              "cucianmu mohon ditunggu ya!",
              style: secondaryTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              height: 50,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF4ABF92),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: null,
                child: Text(
                  "Lanjut",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

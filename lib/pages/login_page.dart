import 'package:flutter/material.dart';
import 'package:syn_laundry/controllers/auth_controller.dart';
import 'package:syn_laundry/pages/beranda_page.dart';
import 'package:syn_laundry/pages/landing_page.dart';
import 'package:syn_laundry/pages/register_page.dart';
import 'package:syn_laundry/themes/themes.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //panggil controller auth
    final authC = Get.put(AuthController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: ListView(
        children: [
          // baris 1 : IMAGE
          Image.asset('assets/img-login.png'),
          SizedBox(
            height: 37,
          ),
          // baris 2 : TEXT
          Center(
            child: Text(
              "Laundry Lebih Mudah!",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // baris 3 : KOLOM INPUT
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: authC.email,
                    // maxLines: 4,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Masukkan Username",
                      hintStyle: secondaryTextStyle,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Obx(() => TextFormField(
                        controller: authC.password,
                        obscureText: authC.secure == true ? false : true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: () {
                                authC.isObsecure();
                              },
                              child: Image.asset('assets/ic-eye.png')),
                          hintText: "Masukkan Password",
                          hintStyle: secondaryTextStyle,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: greyColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: greyColor,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password tidak boleh kosong";
                          }
                          return null;
                        },
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Lupa Password",
                        style: greenTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                  SizedBox(
                    height: 37,
                  ),
                  Obx(() => Container(
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF4ABF92),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            //Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              authC.login();
                            }
                          },
                          child: authC.loading == true
                              ? CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  "Masuk",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // baris 4 : BELUM PUNYA AKUN?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Belum punya akun?",
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                width: 2,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  "Daftar",
                  style: greenTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

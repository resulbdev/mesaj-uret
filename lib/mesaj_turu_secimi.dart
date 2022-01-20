import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soz_uret/MesajTurleri/anneler_gunu.dart';
import 'package:soz_uret/MesajTurleri/babalar_gunu.dart';
import 'package:soz_uret/MesajTurleri/bayram_gunu.dart';
import 'package:soz_uret/MesajTurleri/dogum_gunu.dart';
import 'package:soz_uret/MesajTurleri/gecmis_olsun.dart';
import 'package:soz_uret/MesajTurleri/sevgililer_gunu.dart';

class MesajTuruSecimi extends StatelessWidget {
  const MesajTuruSecimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Mesaj türü seçiniz",
                style: GoogleFonts.hindGuntur(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => SevgililerGunu()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Sevgililer Günü",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mesajı",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DogumGunu()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Doğum Günü",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Mesajı",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BabalarGunu()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Babalar Günü",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mesajı",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnnelerGunu()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Anneler Günü",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Mesajı",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BayramGunu()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Bayram Günü",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mesajı",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GecmisOlsun()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Geçmiş Olsun",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Mesajı",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}

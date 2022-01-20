import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BabalarGunu extends StatefulWidget {
  const BabalarGunu({Key? key}) : super(key: key);

  @override
  _BabalarGunuState createState() => _BabalarGunuState();
}

class _BabalarGunuState extends State<BabalarGunu> {
  var babalarMesaj = [
    "",
    "Kelimelerle anlatılamayan fedakarlık ve karşılıksız sevgiyi tarif et desen bana herhalde sadece “BABA” derdim. Babalar günün kutlu olsun canım babacım.",
    "Derdimi, neşemi, hüznümü, mutluluğumu paylaştığım en iyi arkadaşım. Babalar günün kutlu olsun!",
    "Oyun arkadaşım, suç ortağım, en büyük sırdaşım; Babalar Günün kutlu olsun. Seni çok seviyorum.",
    "Saçlarımın arasında gezdirdiğin parmaklarının sıcaklığını her zaman hissettiğim, zor zamanlarımda varlığından güç aldığım babacığım. İyi ki varsın... Babalar Günün kutlu olsun.",
    "Senin gibi bir babaya sahip olduğum için ne kadar şanslı olduğumu her zaman bileceğim. Seni seviyorum canım babacığım.",
    "Sen güçlü bir çınar gibisin. Arkamı ne zaman sana yaslasam sanırım dünyayı bile fethedebilirim. Çünkü bana hep güç veriyorsun… Babalar Günün kutlu olsun.",
    "Bu hayatta ilk öğretmenim, ilk patronum ve sürekli danışmanım canım babacığım. Varlığın benim en büyük dayanağım, Babalar Günün kutlu olsun.",
    "Canım babam! Varlığın hep yüreğimi ısıttı, bana mutluluk ve güven verdi. Seni seviyorum iyiki varsın, Babalar günün kutlu olsun.",
    "Evimizin yakışıklısı… Babamız canımız bir tanemiz. Bil ki seni hergün daha çok seviyoruz. Varlığınla gurur duyuyoruz. Sen bizim herşeyimizsin. Babalar Günün kutlu olsun.",
  ];

  int babalarMesajNo = 0;

  void babalarMesajYenile() {
    setState(() {
      var i = Random().nextInt(9) + 1;
      while (true) {
        if (babalarMesajNo != i) {
          babalarMesajNo = i;
          break;
        } else {
          i = Random().nextInt(3) + 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text("Babalar Günü",
                style: GoogleFonts.lilitaOne(
                  textStyle: TextStyle(
                    fontSize: 45,
                  ),
                )),
            Text("Mesajı",
                style: GoogleFonts.lilitaOne(
                  textStyle: TextStyle(
                    fontSize: 45,
                  ),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shadowColor: Colors.blue,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
              child: Text(
                "ÜRET",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: babalarMesajYenile,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: SelectableText(
                  babalarMesaj[babalarMesajNo],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}

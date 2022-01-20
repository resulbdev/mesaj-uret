import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DogumGunu extends StatefulWidget {
  const DogumGunu({Key? key}) : super(key: key);

  @override
  _DogumGunuState createState() => _DogumGunuState();
}

class _DogumGunuState extends State<DogumGunu> {
  var dogumGunuSoz = [
    "",
    "Güneş kadar sıcak, kar tanesi kadar berrak, yağmur kadar saf ve Temiz bir ömür dileğiyle. Doğum Günün Kutlu Olsun.",
    "Mutlu olmak için gülmeyi bekleme. Gülmek için yaratılmış gözlerde yaşlar niye. Doğum gününde mesaj yazdım sırf sen mutlu ol diye.",
    "Senin sevginin yeri gönülde hep özeldir. Seni sevmek her şeyden güzeldir. Nice insanlar gördüm ama senin varlığın bin insana bedeldir. İyi ki doğdun.",
    "Arkadaşlar yıldızlar gibidir, onları her zaman göremezsin ama senin için her zaman var olduklarını ve seni düşündüklerini bilirsin. Doğum günün kutlu olsun…",
    "Saatlerdir parlak bir fikir arıyorum sana hoş bir mesaj yollayabilmek, pırıl bir yasam dileyebilmek için. Doğum günün KUTLU OLSUN!",
    "Bugün belki de çok kişiden doğum günü mesajı alacaksın, ancak şu an okuduğun en farklısı çünkü tümüyle sevgiyle yazılmış bir mesaj. İyi ki varsın…",
    "Yokluğun yağmura yazı yazmak kadar zor, sensizlik ölüm kadar acı,sen nefes kadar önemli, canım kadar değerlisin, iyi ki doğdun bir tanem.",
    "Hayatımın anlamı, ömrümün baharı doğum günün kutlu olsun.Hep birlikte yaşlanalım",
  ];
  int dogumGunuMesajNo = 0;

  void dogumMesajYenile() {
    setState(() {
      var i = Random().nextInt(8) + 1;
      while (true) {
        if (dogumGunuMesajNo != i) {
          dogumGunuMesajNo = i;
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
            Text("Dogum Günü",
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
                primary: Colors.pinkAccent,
                onPrimary: Colors.white,
                shadowColor: Colors.pinkAccent,
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
              onPressed: dogumMesajYenile,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: SelectableText(
                  dogumGunuSoz[dogumGunuMesajNo],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}

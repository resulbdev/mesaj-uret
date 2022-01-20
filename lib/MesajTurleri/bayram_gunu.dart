import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BayramGunu extends StatefulWidget {
  const BayramGunu({Key? key}) : super(key: key);

  @override
  _BayramGunuState createState() => _BayramGunuState();
}

class _BayramGunuState extends State<BayramGunu> {
  var bayramMesaj = [
    "",
    "Gerçek olan güzellikler yaşandıkça anlaşılır, Dostluğu, sevgiyi, birlik ve beraberliğimizi, kardeşlik ve dostluğumuzu en sıcak şekilde hissedeceğimiz nica bayramımız mübarek olsun.",
    "En güzel anıları birlikte paylaşmak, her bayramda hatırlanmak dileğiyle...",
    "Sevdiklerinizle beraber sağlıklı ve huzur içinde mutlu bir bayram geçirmenizi dileriz",
    "Kardeşliğin doğduğu, sevgilerin birleştiği, belki durgun, belki yorgun, yine de mutlu, yine de umutlu, yine de sevgi dolu nice bayramlara. Bayramınızı kutlar, küçüklerin ellerinden, büyüklerin gözlerinden öperim.",
    "Mübarek Bayramının size ve sevdiklerinize mutluluk, huzur ve refah getirmesi dileğiyle. Ramazan bayramınız mübarek olsun...",
    "Bayramının güzelliğini ve bereketini yaşadığınız, sevdiklerinizle birlikte nice bayramlar dilerim.",
    "Kardeşliğin doğduğu, sevgilerin birleştiği, belki durgun, belki yorgun, yine de mutlu, yine de umutlu bir bayram geçirmeniz dileğiyle…",
    "Hayat nefes aldığımız kadardır, gerçek olan güzellikler yaşandıkça anlaşılır bu güzel günde birlikte yaşamanın ümidi ile Bayramınızı kutlarız…",
  ];

  int bayramMesajNo = 0;

  void bayramMesajYenile() {
    setState(() {
      var i = Random().nextInt(8) + 1;
      while (true) {
        if (bayramMesajNo != i) {
          bayramMesajNo = i;
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
            Text("Bayram Günü",
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
                primary: Colors.yellowAccent,
                onPrimary: Colors.white,
                shadowColor: Colors.yellowAccent,
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
              onPressed: bayramMesajYenile,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: SelectableText(
                  bayramMesaj[bayramMesajNo],
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

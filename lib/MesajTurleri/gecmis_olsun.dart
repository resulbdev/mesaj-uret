import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GecmisOlsun extends StatefulWidget {
  const GecmisOlsun({Key? key}) : super(key: key);

  @override
  _GecmisOlsunState createState() => _GecmisOlsunState();
}

class _GecmisOlsunState extends State<GecmisOlsun> {
  var gecmisOlsunMesaj = [
    "",
    "Kalplerimiz seninle, bir an önce gözlerindeki ışıltının tekrar güneşi kıskandıracak parlaklıkta olacağına inanıyoruz. Geçmiş olsun.",
    "Dünden daha güzel günlere birlikte yürümek dileğiyle. Geçmiş olsun",
    "Kararan günler bitecek, rengarenk günler bizim için gelicek. Kaybettiğin sağlığına en kısa zamanda kavuşmanı dilerim.",
    "İnanıyoruz ki en kısa zamanda rahatsızlığını yeneceksin. Çabuk iyileşip, bir an önce aramıza dönmen dileğiyle.",
    "Hastalıklarda sabret ki sağlığının kıymetini bilesin. Geçmiş olsun, sağlıklı günlerde görüşmek dileğiyle.",
    "Hastalıklarda sabret ki sağlığının kıymetini bilesin. Geçmiş olsun, sağlıklı günlerde görüşmek dileğiyle.",
    "Duydum ki hasta olmuşsun, sana ilaç olarak sevgimi yolluyorum. En kısa zamanda iyileşmen dileğiyle.",
    "En kısa zamanda iyi olmanı dilerim. Seni Seviyorum.",
    "Mesajların en samimisini, sevgilerin en sıcağını sana yolluyorum. Kötü günler geride kalsın, geçmiş olsun.",
    "Hastayken bile güleceksin ki iyileşebilesin. Sen hep bizim yanımızda olcaksın ki hastalıklar bizden uzak olacak. Geçmiş Olsun!",
  ];

  int gecmisOlsunMesajNo = 0;

  void gecmisOlsunMesajYenile() {
    setState(() {
      var i = Random().nextInt(10) + 1;
      while (true) {
        if (gecmisOlsunMesajNo != i) {
          gecmisOlsunMesajNo = i;
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
            const SizedBox(
              height: 150,
            ),
            Text("Geçmis Olsun",
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
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.green,
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
              onPressed: gecmisOlsunMesajYenile,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: SelectableText(
                  gecmisOlsunMesaj[gecmisOlsunMesajNo],
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

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SevgililerGunu extends StatefulWidget {
  const SevgililerGunu({Key? key}) : super(key: key);

  @override
  _SevgililerGunuState createState() => _SevgililerGunuState();
}

class _SevgililerGunuState extends State<SevgililerGunu> {
  var sevgiliSozler = [
    "",
    "Seni sevmeme izin verdiğin ve karşılığında beni sevdiğin için teşekkür ederim. Benim olduğun için çok şanslıyım.Sevgililer Günün kutlu olsun aşkım!",
    "Senin gibi hoş bir kadına/adama, yılın her günü ne kadar muhteşem olduğu anlatılmalı. Ama bugün özellikle aşkına destan yazmak istiyorum. Sevgililer Günün kutlu olsun bebeğim!",
    "Her sabah uyandığımda kendime,“Böyle birini hak etmek için ne yaptım?” diye soruyorum.Meleğim, Sevgililer Günün kutlu olsun!",
    "Yaşamın akıp gittiği tek düze bir dünyada kısılıp kalmışken şimdi olağan üstü renklere sebep olan sensin. Ve ben seninle birlikte olduğum için çok şanslıyım. Sevgililer Günümüz kutlu olsun.",
    "Biliyorum ki yollar karanlıktan geçtiğinde yanımda sen varsın. Ellerin ellerime dokunduğu sürece varlığım tamamlanmış olacak. Sevgilim, canım sevgilim iyi ki benimlesin.",
    "Seni sevdiğim kadar yeşil ormanlar, sevinde mavi deniz ve rüzgar bizim nefesimiz. Dünyamı değiştirdiğin için ne mutlu bana . Bu manzaranın adı aşk olmalı. Sevgililer Günün kutlu olsun biriciğim!",
    "Senden önce hayatı düşünmeden yaşamış gibiyim. Sonra sayende yıldızları fark ettim ve gökyüzüne bakmayı öğrendim. Sevgililer Günümüz kutlu olsun.",
    "Sevgililer Günü ne denli önemli olabilir? Ne kadar mühim senin için? Her günüm, her nefesim sana olan özlemimle parıldıyor. Sanırım aşık oluyorum. Karşılaştığımızda yüreğim çırpınıyor. Nefesim… İyi ki varsın.",
    "Sen ve ben birer zerresi koca evrenin, savrulurken birbirimizi bulmuş gibiyiz. Ve tamamlanmak duygusuyla güneşli günlere gülümsüyoruz. Seni çok seviyorum.",
    "Birimizin diğerini anlamadığı bir an yokken bu huzura neden şaşırıyoruz ki? Kelimelere gerek kalmayan duygulu bakışların üzerimden eksik olmasın. İyi ki varsın.",
  ];

  int sevgiliMesajNo = 0;

  void sevgiliMesajYenile() {
    setState(() {
      var i = Random().nextInt(10) + 1;
      while (true) {
        if (sevgiliMesajNo != i) {
          sevgiliMesajNo = i;
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
            Text("Sevgililer Günü",
                style: GoogleFonts.lilitaOne(
                  textStyle: const TextStyle(
                    fontSize: 45,
                  ),
                )),
            Text("Mesajı",
                style: GoogleFonts.lilitaOne(
                  textStyle: const TextStyle(
                    fontSize: 45,
                  ),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                shadowColor: Colors.red,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
              child: const Text(
                "ÜRET",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: sevgiliMesajYenile,
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: SelectableText(
                  sevgiliSozler[sevgiliMesajNo],
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}

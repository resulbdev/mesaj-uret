import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnelerGunu extends StatefulWidget {
  const AnnelerGunu({Key? key}) : super(key: key);

  @override
  _AnnelerGunuState createState() => _AnnelerGunuState();
}

class _AnnelerGunuState extends State<AnnelerGunu> {
  var annelerMesaj = [
    "",
    "Bana yolları göstermek için orada olduğun sürece, hiçbir şey için endişelenmem gerekmiyor. Seni seviyorum anneciğim. Anneler Günün kutlu olsun!",
    "Çocukken, bana örnek olmak için benden önce; gençken, her ihtiyacım olduğunda beni gözetmek için arkamdan, yetişkin olduğumda ise destek vermek için hep yanımda yürüdün. Her an yanımda olduğun için sana minnettarım. Anneler Günün kutlu olsun!",
    "Gözyaşı döktüğümde, neşeli olduğumda ya da korktuğumda, yanımda her zaman sen vardın. Her zaman orada olduğunu biliyorum, Anneler Günün kutlu olsun!",
    "Sen benim ilham kaynağımsın. Çocuklarım için her zaman senin gibi bir anne olmak istemişimdir, böylece beni yetiştirmiş olduğun gibi onları yetiştirebilirim. Anneler Günün kutlu olsun!",
    "Bana iyi bir insan olmak için ihtiyacım olan her şeyi sen öğrettin. Sen sadece annem değil, aynı zamanda öğretmenimsin. Anneler Günün kutlu olsun!",
    "Anneler Günün kutlu olsun anneciğim! Benim annem olduğun için çok mutluyum. Bana her zaman inandığın ve benim için yaptığın her şey için teşekkür ederim. Seni seviyorum!",
    "Sen benim kalbimin içinde tuttuğum en güzel şeysin, Anneler Günün kutlu olsun!",
    "Hayatım boyunca beni hep destekledin ve teşvik ettin. Anneler Günün kutlu olsun!",
    "Bügüne kadar gördüğüm en güzel anne olduğun için teşekkür ederim! Anneler Günün kutlu olsun!",
    "Annelerimizin bizi en mükemmel şekilde yetiştirme çabaları olmasaydı bu dünya asla harika olmazdı. Anneler Günün kutlu olsun!",
  ];

  int annelerMesajNo = 0;

  void annelerMesajYenile() {
    setState(() {
      var i = Random().nextInt(10) + 1;
      while (true) {
        if (annelerMesajNo != i) {
          annelerMesajNo = i;
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
            Text("Anneler Günü",
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
                primary: Colors.deepOrangeAccent,
                onPrimary: Colors.white,
                shadowColor: Colors.deepOrangeAccent,
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
              onPressed: annelerMesajYenile,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: SelectableText(
                  annelerMesaj[annelerMesajNo],
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

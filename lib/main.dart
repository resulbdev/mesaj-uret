import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soz_uret/mesaj_turu_secimi.dart';

void main() {
  runApp(const MesajUret());
}

class MesajUret extends StatelessWidget {
  const MesajUret({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 125,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mesaj Üret",
                    style: GoogleFonts.dancingScript(
                      textStyle: const TextStyle(fontSize: 65),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              Stack(
                children: [
                  Container(
                    width: 500,
                    height: 70,
                    color: Colors.black12,
                  ),
                  Center(
                    child: Text(
                      "HOŞ GELDİNİZ",
                      style: GoogleFonts.lalezar(
                        fontStyle: FontStyle.italic,
                        textStyle: const TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: const Text(
                  "BAŞLA",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 40,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => const MesajTuruSecimi()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

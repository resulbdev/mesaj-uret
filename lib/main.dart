import 'package:flutter/material.dart';
import 'pages/home.dart';

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

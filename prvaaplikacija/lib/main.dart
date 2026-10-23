import 'package:flutter/material.dart';
import 'ekrani/ekran_popisa.dart';

void main() {
  runApp(const BandApp());
}

class BandApp extends StatelessWidget {
  const BandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Glazbeni Bendovi",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const EkranPopisa(),
    );
  }
}
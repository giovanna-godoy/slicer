import 'package:flutter/material.dart';
import 'package:slicer/screens/cortes_detalhes_screen.dart';
import 'package:slicer/screens/cortes_screen.dart';
import 'package:slicer/screens/homepage_screen.dart';
import 'package:slicer/screens/splash_screen.dart';
import 'package:slicer/screens/producao-mundial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => SplashScreen(),
        '/categorias': (context) => HomePageScreen(),
        '/cortes':(context) => CortesScreen(),
        '/cortes_detalhes': (context) => CortesDetalhesScreen(),
        '/producao-mundial': (context) => ProducaoMundialScreen(),
      },
    );
  }
}
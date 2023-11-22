import 'package:flutter/material.dart';
import 'package:character_screen/screens/home_screen.dart';
import 'package:character_screen/screens/character_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => const HomeScreen(),
        "/characterDemo": (_) => const CharacterScreen(),
      },
    );
  }
}

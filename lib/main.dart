import 'package:flutter/material.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/kinodaran_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const KinodaranMainScreen(),
    );
  }
}

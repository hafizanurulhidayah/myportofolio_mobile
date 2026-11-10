import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPortfolio',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF35F9B),
          primary: const Color(0xFFF35F9B),
          secondary: const Color(0xFFF7CFDF),
          surface: const Color(0xFFFFFDF9),
        ),

        scaffoldBackgroundColor: const Color(0xFFF5E8E2),

        useMaterial3: true,
      ),

    home: MyHomePage(),
    );
  }
}

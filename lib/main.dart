import 'package:cc206_ani/features/Dashboard_page.dart';
import 'package:cc206_ani/features/analytics_page.dart';
import 'package:cc206_ani/features/marketplace.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANI',
      home: const Dashboard(),
      routes: {
        '/dashboard': (context) => const Dashboard(),
        '/analytics': (context) => const AnalyticsPage(),
        '/marketplace': (context) => const Marketplace(),
      },
    );
  }
}

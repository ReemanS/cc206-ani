import 'package:cc206_ani/features/analytics_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ani",
      home: DefaultTabController(
        length: 2,
        child: AnalyticsPage(),
      ),
    );
  }
}

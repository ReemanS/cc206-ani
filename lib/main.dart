import 'package:cc206_ani/features/analytics_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnalyticsMainApp());
}

class AnalyticsMainApp extends StatelessWidget {
  const AnalyticsMainApp({super.key});

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

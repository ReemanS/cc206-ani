import 'package:cc206_ani/features/analytics_page.dart';
import 'package:cc206_ani/features/marketplace.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnalyticsMainApp());
}

class AnalyticsMainApp extends StatelessWidget {
  const AnalyticsMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ani",
      initialRoute: "/",
      routes: {
        "/marketplace": (context) => const Marketplace(),
        "/analytics": (context) => const AnalyticsPage(),
      },
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/marketplace");
              },
              child: const Text("Marketplace Page"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/analytics");
              },
              child: const Text("Analytics Page"),
            ),
          ],
        ),
      ),
    );
  }
}

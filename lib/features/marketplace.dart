import 'package:flutter/material.dart';
import 'package:cc206_ani/components/crop.dart';
import 'package:cc206_ani/components/seeds.dart';
import 'package:cc206_ani/components/fertilizer.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({super.key});

  @override
  State<Marketplace> createState() => _Marketplace_State();
}

class _Marketplace_State extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0xFFFDFAF4),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            toolbarHeight: 80,
            leading: const Icon(Icons.chevron_left, color: Colors.black),
            elevation: 0,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/app-logo.png",
                  width: 50,
                ),
                const SizedBox(width: 5),
                const Text(
                  "Marketplace",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            bottom: const TabBar(
              tabs: [
                Text(
                  "Crops",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "Fertilizers",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "Seeds",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Crops(),
              Fertilizer(),
              Seeds(),
            ],
          ),
        ),
      ),
    );
  }
}

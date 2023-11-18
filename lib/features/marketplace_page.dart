import 'package:flutter/material.dart';
import 'package:cc206_ani/components/crop.dart';
import 'package:cc206_ani/components/seeds.dart';
import 'package:cc206_ani/components/fertilizer.dart';

// ignore: camel_case_types
class Marketplace extends StatefulWidget {
  const Marketplace({super.key});

  @override
  State<Marketplace> createState() => _Marketplace_State();
}
// ignore: camel_case_types
class _Marketplace_State extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Marketplace"),
          bottom: const TabBar(
            tabs: [
             Tab(text:("Crops")),
             Tab(text:("Crops")),
             Tab(text:("Crops")),
            ],
        ),
      ),
    body: const TabBarView(children:[
            Crops(),
            Fertilizer(),
            Seeds(),
          ], 
        ),
      ),
    );
  }
}
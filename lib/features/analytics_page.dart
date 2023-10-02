import 'dart:ui';

import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFDFAF4),
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
              "Analytics",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: screenSize.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: screenSize.height * 0.8,
            width: screenSize.width * 0.95,
            child: ListView(
              children: [
                ItemCard(
                  itemName: "Cabbage",
                  imagePath: "assets/images/cabbage.png",
                  currentPrice: 150,
                  oneWeekAveragePrice: 167.4,
                  oneWeekLowPrice: 131.4,
                ),
                ItemCard(
                  itemName: "Carrots",
                  imagePath: "assets/images/carrot.png",
                  currentPrice: 146,
                  oneWeekAveragePrice: 147.5,
                  oneWeekLowPrice: 140.2,
                ),
                ItemCard(
                  itemName: "Garlic",
                  imagePath: "assets/images/garlic.png",
                  currentPrice: 150,
                  oneWeekAveragePrice: 167.4,
                  oneWeekLowPrice: 131.4,
                ),
                ItemCard(
                  itemName: "Potato",
                  imagePath: "assets/images/potato.png",
                  currentPrice: 150,
                  oneWeekAveragePrice: 167.4,
                  oneWeekLowPrice: 131.4,
                ),
                ItemCard(
                  itemName: "Red Onlin",
                  imagePath: "assets/images/red-onion.png",
                  currentPrice: 150,
                  oneWeekAveragePrice: 167.4,
                  oneWeekLowPrice: 131.4,
                ),
                ItemCard(
                  itemName: "Cabbage",
                  imagePath: "assets/images/cabbage.png",
                  currentPrice: 150,
                  oneWeekAveragePrice: 167.4,
                  oneWeekLowPrice: 131.4,
                ),
                ItemCard(
                  itemName: "Carrots",
                  imagePath: "assets/images/carrot.png",
                  currentPrice: 146,
                  oneWeekAveragePrice: 147.5,
                  oneWeekLowPrice: 140.2,
                ),
                ItemCard(
                  itemName: "Garlic",
                  imagePath: "assets/images/garlic.png",
                  currentPrice: 150,
                  oneWeekAveragePrice: 167.4,
                  oneWeekLowPrice: 131.4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends Card {
  final String itemName;
  final String imagePath;
  final double currentPrice;
  final double oneWeekAveragePrice;
  final double oneWeekLowPrice;

  ItemCard({
    super.key,
    required this.itemName,
    required this.imagePath,
    required this.currentPrice,
    required this.oneWeekAveragePrice,
    required this.oneWeekLowPrice,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Card(
      color: const Color(0xFFD1F0BB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Container(
          height: 160,
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Table(
                columnWidths: <int, TableColumnWidth>{
                  0: FixedColumnWidth(screenSize.width * 0.35),
                  1: IntrinsicColumnWidth(flex: 1),
                },
                children: <TableRow>[
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          itemName,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text("Current Price:"),
                      ),
                      Text("₱ $currentPrice/kg"),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text("1 Week Avg:"),
                      ),
                      Text("₱ $oneWeekAveragePrice/kg"),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text("1 Week Low:"),
                      ),
                      Text("₱ $oneWeekLowPrice/kg"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

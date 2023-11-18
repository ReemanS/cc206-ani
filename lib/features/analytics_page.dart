import 'package:cc206_ani/components/fruits_list.dart';
import 'package:flutter/material.dart';

import '../components/vegetables_list.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFDFAF4),
      appBar: AppBar(
        bottom: const TabBar(
          indicatorColor: Colors.green,
          padding: EdgeInsets.only(bottom: 10),
          tabs: [
            Tab(
              child: Text("Fruits",
                  style: TextStyle(fontFamily: "Poppins", color: Colors.black)),
            ),
            Tab(
              child: Text("Vegetables",
                  style: TextStyle(fontFamily: "Poppins", color: Colors.black)),
            ),
          ],
        ),
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
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
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
                  hintStyle: const TextStyle(fontFamily: "Poppins"),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Expanded(
            child: TabBarView(
              children: [
                FruitsList(),
                VegetablesList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final double currentPrice;
  final double oneWeekAveragePrice;
  final double oneWeekLowPrice;

  const ItemCard({
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
                  1: const IntrinsicColumnWidth(flex: 1),
                },
                children: <TableRow>[
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          itemName,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: const Text("Current Price:",
                            style: TextStyle(fontFamily: "Poppins")),
                      ),
                      Text("₱ $currentPrice/kg",
                          style: const TextStyle(fontFamily: "Poppins")),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: const Text("1 Week Avg:",
                            style: TextStyle(fontFamily: "Poppins")),
                      ),
                      Text("₱ $oneWeekAveragePrice/kg",
                          style: const TextStyle(fontFamily: "Poppins")),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: const Text("1 Week Low:",
                            style: TextStyle(fontFamily: "Poppins")),
                      ),
                      Text("₱ $oneWeekLowPrice/kg",
                          style: const TextStyle(fontFamily: "Poppins")),
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

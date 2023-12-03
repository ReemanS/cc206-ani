import 'package:flutter/material.dart';

class Seeds extends StatelessWidget {
  const Seeds({super.key});

  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: screenSize.width * 0.91,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
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
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildItemBox("carrot", "Cabbage"),
                    BuildItemBox("garlic", "Garlic"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildItemBox("red-onion", "Red Onion"),
                    BuildItemBox("banana", "Banana"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildItemBox("cabbage", "Cabbage"),
                    BuildItemBox("potato", "Potato"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column BuildItemBox(String image, String emName) {
    return Column(
      children: [
        ItemCard(
          itemName: "Cabbage",
          imagePath: "assets/images/$image.png",
        ),
        Text(
          emName,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final String imagePath;

  const ItemCard({
    Key? key,
    required this.itemName,
    required this.imagePath,
  }) : super(key: key);

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
                width: 126,
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
              const SizedBox(width: 2),
              Table(
                columnWidths: <int, TableColumnWidth>{
                  0: FixedColumnWidth(screenSize.width * 0.38),
                  1: const IntrinsicColumnWidth(flex: 1),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

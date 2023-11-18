import 'package:cc206_ani/features/analytics_page.dart';
import 'package:flutter/material.dart';

class VegetablesList extends StatelessWidget {
  const VegetablesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
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
    );
  }
}

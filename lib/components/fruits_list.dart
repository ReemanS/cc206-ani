import 'package:cc206_ani/features/analytics_page.dart';
import 'package:flutter/material.dart';

class FruitsList extends StatelessWidget {
  const FruitsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ItemCard(
          itemName: "Apples",
          imagePath: "assets/images/apples.jpg",
          currentPrice: 150,
          oneWeekAveragePrice: 167.4,
          oneWeekLowPrice: 131.4,
        ),
        ItemCard(
          itemName: "Bananas",
          imagePath: "assets/images/banana.png",
          currentPrice: 146,
          oneWeekAveragePrice: 147.5,
          oneWeekLowPrice: 140.2,
        ),
        ItemCard(
          itemName: "Grapes",
          imagePath: "assets/images/grapes.jpg",
          currentPrice: 150,
          oneWeekAveragePrice: 167.4,
          oneWeekLowPrice: 131.4,
        ),
        ItemCard(
          itemName: "Oranges",
          imagePath: "assets/images/oranges.jpg",
          currentPrice: 150,
          oneWeekAveragePrice: 167.4,
          oneWeekLowPrice: 131.4,
        ),
        ItemCard(
          itemName: "Strawberries",
          imagePath: "assets/images/strawberry.jpg",
          currentPrice: 150,
          oneWeekAveragePrice: 167.4,
          oneWeekLowPrice: 131.4,
        ),
        ItemCard(
          itemName: "Grapes",
          imagePath: "assets/images/grapes.jpg",
          currentPrice: 150,
          oneWeekAveragePrice: 167.4,
          oneWeekLowPrice: 131.4,
        ),
        ItemCard(
          itemName: "Apples",
          imagePath: "assets/images/apples.jpg",
          currentPrice: 150,
          oneWeekAveragePrice: 167.4,
          oneWeekLowPrice: 131.4,
        ),
      ],
    );
  }
}

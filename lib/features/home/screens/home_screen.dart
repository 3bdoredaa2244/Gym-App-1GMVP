import 'package:flutter/material.dart';
import '../widgets/class_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Temporary dummy data
    final classes = [
      {
        "gymName": "FitZone",
        "sport": "Yoga",
        "time": "10:00 AM",
        "price": 15,
        "spots": 5,
      },
      {
        "gymName": "Power Gym",
        "sport": "CrossFit",
        "time": "6:00 PM",
        "price": 20,
        "spots": 2,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Discover Classes"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: classes.length,
        itemBuilder: (context, index) {
          final item = classes[index];

          return ClassCard(
            gymName: item["gymName"] as String,
            sport: item["sport"] as String,
            time: item["time"] as String,
            price: item["price"] as int,
            spots: item["spots"] as int,
          );
        },
      ),
    );
  }
}
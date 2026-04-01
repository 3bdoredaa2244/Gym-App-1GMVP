import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {
  final String gymName;
  final String sport;
  final String time;
  final int price;
  final int spots;

  const ClassCard({
    super.key,
    required this.gymName,
    required this.sport,
    required this.time,
    required this.price,
    required this.spots,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gym name
            Text(
              gymName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            // Sport
            Text(
              sport,
              style: const TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 10),

            // Time + Price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(time),
                Text("\$$price"),
              ],
            ),

            const SizedBox(height: 10),

            // Spots
            Text(
              "$spots spots left",
              style: TextStyle(
                color: spots < 3 ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import "package:flutter/material.dart";
import "../modeli/band.dart";

class BandDetailScreen extends StatelessWidget {
  final Bend activity;
  final bool isJoined;

  const BandDetailScreen({
    super.key,
    required this.activity,
    required this.isJoined,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(activity.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal),
              ),
              child: Row(
                children: [
                  Icon(activity.icon, size: 48, color: Colors.teal),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Broj pjesama u katalogu: ${activity.numberOfSongs}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              activity.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: isJoined
                      ? null
                      : () {
                          Navigator.pop(context, true);
                        },
                  child: Text(isJoined ? "Slijediš bend" : "Zaprati bend"),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Natrag"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
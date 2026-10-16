import "package:flutter/material.dart";

import "../models/band.dart";
import "ekran_detalja.dart";

class EkranPopisa extends StatefulWidget {
  const EkranPopisa({super.key});

  @override
  State<EkranPopisa> createState() => _EkranPopisa();
}

class _EkranPopisa extends State<EkranPopisa> {
  final Set<String> joined = {};

  Future<void> openDetails(band band) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => EkranDetalja(
          band: band,
          isJoined: joined.contains(band.name),
        ),
      ),
    );

    if (result != null) {
      setState(() {
        joined.add(band.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = [];
    for (final band in activities) {
      tiles.add(
        ActivityTile(
          band: band,
          isJoined: joined.contains(band.name),
          onOpen: () {
            openDetails(band);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Izvannastavne aktivnosti")),
      body: ListView(padding: const EdgeInsets.all(8), children: tiles),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final band band;
  final bool isJoined;
  final VoidCallback onOpen;

  const ActivityTile({
    super.key,
    required this.band,
    required this.isJoined,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            band.icon,
            size: 32,
            color: isJoined ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  band.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(band.songs),
              ],
            ),
          ),
          IconButton(onPressed: onOpen, icon: const Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}
import 'package:agrogenesis/models/fertilizer.dart';
import 'package:flutter/material.dart';

class FertilizerScreen extends StatelessWidget {
  const FertilizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600], // Adjusted green color intensity
        title: const Text('Fertilizers', style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort, color: Colors.white), // Sort icon
            onPressed: () {
              // Add sort functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list,
                color: Colors.white), // Filter icon
            onPressed: () {
              // Add filter functionality here
            },
          ),
          const SizedBox(width: 8), // Adds space between the icons
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,
                    color: Colors.white), // White icon color
                filled: true,
                fillColor: Colors.green[600], // Adjusted green color intensity
                hintText: 'Search...',
                hintStyle: const TextStyle(
                    color: Colors.white70), // Lighter hint text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: fertilizers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.70, // Adjust the card's aspect ratio
                ),
                itemBuilder: (context, index) {
                  return FertilizerCard(fertilizer: fertilizers[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FertilizerCard extends StatelessWidget {
  final Fertilizer fertilizer;

  const FertilizerCard({
    super.key,
    required this.fertilizer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                // color: Color(0xFFF5F5DC),
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2, 3))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(height: 100, width: 120, fertilizer.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fertilizer.fertilizerName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    fertilizer.price,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[800],
                foregroundColor: Colors.white, // Adjusted green color intensity
              ),
              child: const Text('Add to Cart'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:agrogenesis/models/fertilizer.dart';
import 'package:agrogenesis/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                  return FertilizerCard(
                      onTap: () {
                        Provider.of<CartProvider>(context, listen: false)
                            .addItem(
                          'fertilizer$index',
                          fertilizers[index].fertilizerName,
                          fertilizers[index].imageUrl,
                          double.tryParse(fertilizers[index].price) ?? 120,
                          3.5,
                        );
                      },
                      fertilizer: fertilizers[index]);
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
  final Function()? onTap;
  const FertilizerCard({super.key, required this.fertilizer, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: (){
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              imageUrl: fertilizer.imageUrl,
              seedName: fertilizer.fertilizerName,
              price: fertilizer.price,
            ),
          ),
        );
      },

      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
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
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[800],
                  foregroundColor:
                      Colors.white, // Adjusted green color intensity
                ),
                child: const Text('Add to Cart'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final String imageUrl;
  final String seedName;
  final String price;

  const ProductDetailsScreen({
    super.key,
    required this.imageUrl,
    required this.seedName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text(seedName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(imageUrl, height: 200),
            ),
            const SizedBox(height: 16),
            Text(
              seedName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            const SizedBox(height: 16),
            const Text(
              'Premium, certified wheat seeds selected for high germination rates and optimal yield. Suitable for both large-scale commercial farming and small-scale cultivation.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {},
                ),
                const Text('2'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

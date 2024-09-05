import 'package:flutter/material.dart';

class CropHealthScreen extends StatelessWidget {
  const CropHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Health'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Crop Health Section
          buildExpansionTile(
            title: '🌱 Crop Health',
            content: [
              buildListItem('Condition',
                  'The crop condition is generally good, with 85% of plants showing healthy growth. This indicates a strong start to the growing season and suggests minimal immediate intervention is needed.'),
            ],
          ),
          // Pest Issues Section
          buildExpansionTile(
            title: '🐛 Pest Issues',
            content: [
              buildListItem('Pest Presence',
                  'Pest presence is currently affecting 10% of the crop area. The damage is classified as low severity, meaning immediate action may not be necessary, but monitoring should continue.'),
            ],
          ),
          // Disease Status Section
          buildExpansionTile(
            title: '🦠 Disease Status',
            content: [
              buildListItem('Fungal Infections',
                  'Early-stage fungal infections are impacting 5% of the crops. This early detection allows for timely intervention to prevent further spread and protect overall crop health.'),
            ],
          ),
          // Yield Potential Section
          buildExpansionTile(
            title: '📈 Yield Potential',
            content: [
              buildListItem('Potential Increase',
                  'Implementing the recommended practices could result in a 15% increase in yield. This potential boost highlights the benefit of optimizing current farming techniques for better productivity.'),
            ],
          ),
          // Harvest Status Section
          buildExpansionTile(
            title: '🌾 Harvest Status',
            content: [
              buildListItem('Maturity',
                  'About 70% of the crops are nearing maturity, with harvest expected in 10 days. This timeline allows for preparation and scheduling of harvest activities to maximize efficiency.'),
            ],
          ),
          // Soil Health Section
          buildExpansionTile(
            title: '🪴 Soil Health',
            content: [
              buildListItem('Fertility',
                  'The soil fertility status is currently moderate, suggesting that a nutrient boost is necessary. Additional fertilization will help enhance soil quality and support crop growth.'),
            ],
          ),
          // Water Needs Section
          buildExpansionTile(
            title: '💧 Water Needs',
            content: [
              buildListItem('Water Stress',
                  'Water stress levels are low, indicating that no extra irrigation is needed at the moment. This is beneficial for resource management and helps avoid overwatering.'),
            ],
          ),
          // Nutrient Deficit Section
          buildExpansionTile(
            title: '🌾⚠ Nutrient Deficit',
            content: [
              buildListItem('Nitrogen Deficiency',
                  'Nitrogen deficiency is observed in 15% of the field. Addressing this deficiency through targeted fertilization will improve crop health and yield potential.'),
            ],
          ),
          // Best Harvest Times Section
          buildExpansionTile(
            title: '⏰ Best Harvest Times',
            content: [
              buildListItem('Optimal Time',
                  'The optimal time for harvesting is between 6 AM and 10 AM over the next 5 days. Harvesting during these hours will ensure the best quality and reduce post-harvest losses.'),
            ],
          ),
          // Estimated Profit Section
        ],
      ),
    );
  }

  Widget buildExpansionTile(
      {required String title, required List<Widget> content}) {
    return ExpansionTile(
      title: Text(title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      children: content,
    );
  }

  Widget buildListItem(String title, String subtitle) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
    );
  }
}

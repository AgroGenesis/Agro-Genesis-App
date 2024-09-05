import 'package:flutter/material.dart';

class CropAdvisoryScreen extends StatelessWidget {
  const CropAdvisoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Advisory'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Planting Recommendations Section
          buildExpansionTile(
            title: '🌱 Planting Recommendations',
            content: [
              buildListItem('Optimal Sowing Time',
                  'Get personalized advice on the best time to plant your crops based on local climate and soil conditions.'),
              buildListItem('Seed Selection',
                  'Choose the best seeds for your field by considering variety, disease resistance, and yield potential.'),
            ],
          ),
          // Weather Forecast & Alerts Section
          buildExpansionTile(
            title: '🌞 Weather Forecast & Alerts',
            content: [
              buildListItem('Real-time Weather Data',
                  'Stay updated with localized weather forecasts to plan your farming activities effectively.'),
              buildListItem('Weather Alerts',
                  'Receive timely alerts about storms, droughts, or any adverse weather conditions to protect your crops.'),
            ],
          ),
          // Fertilizer Application Section
          buildExpansionTile(
            title: '🚜 Fertilizer Application',
            content: [
              buildListItem('Nutrient Management',
                  'Get recommendations on the right type and amount of fertilizers based on your crop\'s growth stage and soil tests.'),
              buildListItem('Custom Fertilizer Plans',
                  'Tailored advice to optimize nutrient intake and avoid under or over-fertilization.'),
            ],
          ),
          // Crop Protection Section
          buildExpansionTile(
            title: '🌾 Crop Protection',
            content: [
              buildListItem('Pest & Disease Identification',
                  'Learn how to identify pests and diseases early and receive guidance on safe and effective solutions.'),
              buildListItem('Integrated Pest Management (IPM)',
                  'Adopt eco-friendly practices to reduce pest impact and improve crop health.'),
            ],
          ),
          // Irrigation Management Section
          buildExpansionTile(
            title: '💧 Irrigation Management',
            content: [
              buildListItem('Watering Schedules',
                  'Smart recommendations on when and how much to irrigate based on soil moisture levels and weather predictions.'),
              buildListItem('Water Conservation',
                  'Tips on using water efficiently, including drip irrigation and rainwater harvesting.'),
            ],
          ),
          // Yield Forecast Section
          buildExpansionTile(
            title: '📈 Yield Forecast',
            content: [
              buildListItem('Projected Harvest',
                  'Receive data-driven estimates on your expected yield based on current crop health and local conditions.'),
              buildListItem('Harvest Timing',
                  'Get advice on the best time to harvest for maximum quality and yield.'),
            ],
          ),
          // Market Insights Section
          buildExpansionTile(
            title: '🌐 Market Insights',
            content: [
              buildListItem('Current Prices',
                  'Stay updated with real-time market prices for your crops.'),
              buildListItem('Market Trends',
                  'Insights into market demand and tips on how to time your sales for the best prices.'),
            ],
          ),
          // Sustainable Farming Section
          buildExpansionTile(
            title: '🌍 Sustainable Farming',
            content: [
              buildListItem('Soil Health Monitoring',
                  'Get regular updates on your soil’s condition and recommendations for maintaining its fertility.'),
              buildListItem('Organic Farming Tips',
                  'Guidance on sustainable farming practices, including crop rotation and natural pest control.'),
            ],
          ),
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

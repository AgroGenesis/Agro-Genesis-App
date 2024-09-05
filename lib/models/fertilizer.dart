class Fertilizer {
  final String imageUrl;
  final String fertilizerName;
  final String price;

  Fertilizer({
    required this.imageUrl,
    required this.fertilizerName,
    required this.price,
  });
}

final List<Fertilizer> fertilizers = [
  Fertilizer(
    imageUrl: 'assets/fertilizers/Calcium Nitrate Granular.jpg',
    fertilizerName: 'Calcium Nitrate Granular Fertilizer',
    price: '₹50/kg',
  ),
  Fertilizer(
    imageUrl: 'assets/fertilizers/Granules Neem Cake Fertilizer.jpg',
    fertilizerName: 'Neem Cake Fertilizer',
    price: '₹80/kg',
  ),
  Fertilizer(
    imageUrl: 'assets/fertilizers/Bio_fertilizer.png',
    fertilizerName: 'Micorrhiza Bio Fertilizer',
    price: '₹70/kg',
  ),
  Fertilizer(
    imageUrl: 'assets/fertilizers/Powder Gypsum.png',
    fertilizerName: '95% Gypsum Fertilizer',
    price: '₹599/kg',
  ),
  Fertilizer(
    imageUrl: 'assets/fertilizers/Potassium_Nitrate.png',
    fertilizerName: 'Potassium Nitrate Fertilizer',
    price: '₹499/kg',
  ),
];

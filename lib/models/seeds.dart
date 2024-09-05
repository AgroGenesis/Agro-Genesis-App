class Seeds {
  final String imageUrl;
  final String seedName;
  final String price;

  Seeds({
    required this.imageUrl,
    required this.seedName,
    required this.price,
  });
}

List<Seeds> seedsList = [
  Seeds(
    imageUrl: 'assets/seeds/Wheat.png',
    seedName: 'Wheat Seeds',
    price: '₹50/kg',
  ),
  Seeds(
    imageUrl: 'assets/seeds/Rice.png',
    seedName: 'Rice Seeds',
    price: '₹80/kg',
  ),
  Seeds(
    imageUrl: 'assets/seeds/Soyabean.jpeg.jpg',
    seedName: 'Soyabean Seeds',
    price: '₹70/kg',
  ),
  Seeds(
    imageUrl: 'assets/seeds/Tomata.png',
    seedName: 'Tomato Seeds',
    price: '₹599/kg',
  ),
  Seeds(
    imageUrl: 'assets/seeds/Onion_Seeds.png',
    seedName: 'Onion Seeds',
    price: '₹499/kg',
  ),
];

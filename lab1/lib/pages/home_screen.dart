import 'package:flutter/material.dart';
import 'product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('223162'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: clothingItems.length,
        itemBuilder: (context, index) {
          final product = clothingItems[index]; 
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(product.imageUrl), 
              ),
              title: Text('Product: ${product.name}'),
              subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Product(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ClothingItem {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  ClothingItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

final List<ClothingItem> clothingItems = [
  ClothingItem(
    name: 'Класична бела маица',
    description: 'Удобна памучна маица совршена за секојдневно носење. Се одликува со класичен округол изрез и кратки ракави.',
    price: 19.99,
    imageUrl: 'lib/img/1.jpg',
  ),
  ClothingItem(
    name: 'Сини тексас фармерки',
    description: 'Класични сини тексас фармерки со редовен крој. Направени од висококвалитетен тексас со мала еластичност за удобност.',
    price: 59.99,
    imageUrl: 'lib/img/2jpg.jpg',
  ),
  ClothingItem(
    name: 'Црна кожна јакна',
    description: 'Стилска кожна јакна со модерен крој. Се одликува со повеќе џебови и премиум детали на патентите.',
    price: 199.99,
    imageUrl: 'lib/img/3.jpg',
  ),
  ClothingItem(
    name: 'Летен фустан со цветен дезен',
    description: 'Лесен и раздвижен летен фустан со прекрасен цветен дезен. Совршен за топли временски пригоди.',
    price: 49.99,
    imageUrl: 'lib/img/4.jpg',
  ),
  ClothingItem(
    name: 'Сив спортски дуксер',
    description: 'Удобен и практичен спортски дуксер. Идеален за рекреација или опуштено време дома.',
    price: 39.99,
    imageUrl: 'lib/img/5.jpg',
  ),
  ClothingItem(
    name: 'Поло маица во тегет боја',
    description: 'Елегантна поло маица со кратки ракави. Изработена од квалитетен памук со едноставен дизајн.',
    price: 29.99,
    imageUrl: 'lib/img/6.jpg',
  ),
];


import 'package:flutter/material.dart';
import 'product.dart'; // Import the Product screen

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
  imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Сини тексас фармерки',
  description: 'Класични сини тексас фармерки со редовен крој. Направени од висококвалитетен тексас со мала еластичност за удобност.',
  price: 59.99,
  imageUrl: 'https://images.unsplash.com/photo-1542272454315-4c01d7abdf4a?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Црна кожна јакна',
  description: 'Стилска кожна јакна со модерен крој. Се одликува со повеќе џебови и премиум детали на патентите.',
  price: 199.99,
  imageUrl: 'https://images.unsplash.com/photo-1551028719-00167b16eac5?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Летен фустан со цветен дезен',
  description: 'Лесен и раздвижен летен фустан со прекрасен цветен дезен. Совршен за топли временски пригоди.',
  price: 49.99,
  imageUrl: 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Сив спортски дуксер',
  description: 'Удобен и практичен спортски дуксер. Идеален за рекреација или опуштено време дома.',
  price: 39.99,
  imageUrl: 'https://images.unsplash.com/photo-1589986460039-fdb6832dfb00?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Поло маица во тегет боја',
  description: 'Елегантна поло маица со кратки ракави. Изработена од квалитетен памук со едноставен дизајн.',
  price: 29.99,
  imageUrl: 'https://images.unsplash.com/photo-1562176160-8d64ab8df866?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Зимска јакна со капуљача',
  description: 'Топла зимска јакна со капуљача и подлога од крзно. Идеална за студени зимски денови.',
  price: 149.99,
  imageUrl: 'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Спортски шорцеви',
  description: 'Лесни и удобни шорцеви, идеални за трчање или тренинг. Направени од дишење материјал.',
  price: 24.99,
  imageUrl: 'https://images.unsplash.com/photo-1511355504997-749355c89234?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Сукња со висок струк',
  description: 'Модерна сукња со висок струк, идеална за официјални или вечерни пригоди.',
  price: 34.99,
  imageUrl: 'https://images.unsplash.com/photo-1534938665420-cce3e5c09f27?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),
ClothingItem(
  name: 'Бели патички за тренинг',
  description: 'Удобни и стилски патички со дишење горен дел. Идеални за спорт или секојдневно носење.',
  price: 79.99,
  imageUrl: 'https://images.unsplash.com/photo-1578916171720-59c96f06ce15?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
),

];

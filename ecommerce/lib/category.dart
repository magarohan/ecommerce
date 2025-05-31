import 'package:flutter/material.dart';

class CategoryScreen
    extends StatefulWidget {
  const CategoryScreen(
      {super.key});

  @override
  State<CategoryScreen> createState() =>
      _CategoryState();
}

class _CategoryState
    extends State<CategoryScreen> {
  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hoodies"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 5,
        childAspectRatio: 0.6,
        children: <Widget>[
          _buildProductCard("Hoodie 1", "1000", "https://images.pexels.com/photos/2046790/pexels-photo-2046790.jpeg?auto=compress&cs=tinysrgb&w=600"),
          _buildProductCard("Hoodie 2", "1000", "https://images.pexels.com/photos/2046790/pexels-photo-2046790.jpeg?auto=compress&cs=tinysrgb&w=600"),
          _buildProductCard("Hoodie 3", "1000", "https://images.pexels.com/photos/2046790/pexels-photo-2046790.jpeg?auto=compress&cs=tinysrgb&w=600"),
          _buildProductCard("Hoodie 4", "1000", "https://images.pexels.com/photos/2046790/pexels-photo-2046790.jpeg?auto=compress&cs=tinysrgb&w=600"),
          _buildProductCard("Hoodie 5", "1000", "https://images.pexels.com/photos/2046790/pexels-photo-2046790.jpeg?auto=compress&cs=tinysrgb&w=600"),
          _buildProductCard("Hoodie 6", "1000", "https://images.pexels.com/photos/2046790/pexels-photo-2046790.jpeg?auto=compress&cs=tinysrgb&w=600")
        ],
      ),
    );
  }

  Widget _buildProductCard(
      String label,
      String price,
      String imageUrl) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(label),
        Text(price)
      ]),
    ));
  }
}

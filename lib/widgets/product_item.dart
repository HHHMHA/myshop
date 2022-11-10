import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
        ),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

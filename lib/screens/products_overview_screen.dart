import 'package:flutter/material.dart';

// import '../providers/products.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  favorites,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    // final products = Provider.of<Products>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onSelected: (FilterOptions selectedValue) {
              // if (selectedValue == FilterOptions.favorites) {
              //   products.showFavoritesOnly();
              //   return;
              // }
              // products.showAll();
              setState(() {
                _showOnlyFavorites = selectedValue == FilterOptions.favorites;
              });
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorites,
                child: Text(
                  'Only Favorites',
                ),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text(
                  'Show All',
                ),
              ),
            ],
          )
        ],
      ),
      body: ProductsGrid(showFavoritesOnly: _showOnlyFavorites),
    );
  }
}

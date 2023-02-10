import 'package:flutter/material.dart';
import 'package:myshop/widgets/app_drawer.dart';
import 'package:myshop/widgets/user_product_item.dart';
import 'package:provider/provider.dart'

import '../providers/products.dart';;

class UserProductScreen extends StatelessWidget {
  static const routName = '/user-products';

  const UserProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (ctx, index) => Column(
            children: [
              UserProductItem(title: productsData.items[index].title, imageUrl: productsData.items[index].imageUrl, key: ValueKey(productsData.items[index].id),),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

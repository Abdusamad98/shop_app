import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/user_product_item.dart';

class UserProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your old products!'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (_, index) => UserProductItem(
              productsData.items[index].title,
              productsData.items[index].imageUrl),
        ),
        padding: EdgeInsets.all(8),
      ),
    );
  }
}

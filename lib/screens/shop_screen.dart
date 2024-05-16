import 'package:ecommerce_app/models/product_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/product_tile.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<ProductService>().shop;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Container(
          child: Text(
            'Shop',
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.only(left: 12),
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              'Pick from a selected list of premium products',
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 30),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}

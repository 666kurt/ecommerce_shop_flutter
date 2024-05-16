import 'package:ecommerce_app/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product_service.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void removeFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('Do you want remove this item from cart?'),
        actions: [
          CupertinoButton(
            child: Text('Remove'),
            onPressed: () {
              Navigator.pop(context);
              context.read<ProductService>().removeFromCard(product);
            },
          ),
          CupertinoButton(
            child: Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final carts = context.watch<ProductService>().cart;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Container(
          child: Text(
            'Cart',
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
      body: ListView.builder(
        itemCount: carts.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(carts[index].title),
            subtitle: Text('\$${carts[index].price}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => removeFromCart(context, carts[index]),
            ),
          );
        }),
      ),
    );
  }
}

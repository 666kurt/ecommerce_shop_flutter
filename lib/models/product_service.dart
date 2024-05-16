import 'package:flutter/material.dart';
import 'product_model.dart';

class ProductService extends ChangeNotifier {
  // list of product
  final List<Product> _shop = [
    Product(
      title: 'Product 1',
      description: 'Product description 1',
      price: 10.99,
      imagePath: "assets/item1.png",
    ),
    Product(
      title: 'Product 2',
      description: 'Product description 2',
      price: 10.99,
      imagePath: "assets/item2.png",
    ),
    Product(
      title: 'Product 3',
      description: 'Product description 3',
      price: 10.99,
      imagePath: "assets/item3.png",
    ),
    Product(
      title: 'Product 4',
      description: 'Product description 4',
      price: 10.99,
      imagePath: "assets/item4.png",
    ),
    Product(
      title: 'Product 5',
      description: 'Product description 5',
      price: 10.99,
      imagePath: "assets/item5.png",
    ),
  ];

  // Card of product
  final List<Product> _cart = [];

  // Get product list
  List<Product> get shop => _shop;

  // Get product card
  List<Product> get cart => _cart;

  // Add new product to card
  void addToCard(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // Remove product from card
  void removeFromCard(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}

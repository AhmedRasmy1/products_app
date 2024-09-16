import 'package:flutter/material.dart';

class ProductHomePage extends StatelessWidget {
  const ProductHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        title: const Text(
          'Products',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}

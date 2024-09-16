import 'package:flutter/material.dart';
import 'package:products_app/Widget/singleProduct_widget.dart';
import 'package:products_app/models/product_model.dart';
import 'package:products_app/services/get_products.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FutureBuilder<List<ProductModel>>(
          future: GetProducts().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error.toString()}"),
              );
            } else if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;

              if (products.isEmpty) {
                return const Center(child: Text("No products available"));
              }

              return GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 19,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return SingleProductWidget(product: products[index]);
                },
              );
            } else {
              return const Center(child: Text("No data available"));
            }
          },
        ),
      ),
    );
  }
}

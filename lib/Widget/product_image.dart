import 'package:flutter/material.dart';
import 'package:products_app/models/product_model.dart';

// ignore: must_be_immutable
class ProductImage extends StatelessWidget {
  ProductImage({
    required this.product,
    super.key,
  });

  ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(
              product!.image,
            ),
            fit: BoxFit.contain,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: const Icon(
            Icons.favorite_border,
            size: 30,
            color: Color.fromARGB(255, 0, 64, 116),
          ),
        ),
      ),
    );
  }
}

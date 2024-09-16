import 'package:flutter/material.dart';
import 'package:products_app/Widget/prdouct_details.dart';
import 'package:products_app/Widget/product_image.dart';
import 'package:products_app/models/product_model.dart';

// ignore: must_be_immutable
class SingleProductWidget extends StatelessWidget {
  SingleProductWidget({
    required this.product,
    super.key,
  });
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3, color: const Color(0xffafc6dc)),
      ),
      child: Column(
        children: [
          ProductImage(product: product),
          const SizedBox(height: 5),
          ProductDetails(product: product),
        ],
      ),
    );
  }
}

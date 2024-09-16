import 'package:flutter/material.dart';
import 'package:products_app/Widget/prdouct_details.dart';
import 'package:products_app/Widget/product_image.dart';

class SingleProductWidget extends StatelessWidget {
  const SingleProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: const Color(0xffafc6dc)),
      ),
      child: const Column(
        children: [
          ProductImage(),
          SizedBox(height: 5),
          ProductDetails(),
        ],
      ),
    );
  }
}

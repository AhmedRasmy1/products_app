import 'package:flutter/material.dart';
import 'package:products_app/models/product_model.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  ProductDetails({
    required this.product,
    super.key,
  });

  ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product!.title,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff030051)),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            product!.description,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff030051)),
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Text(
                "EGP ${product!.price}",
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff030051)),
              ),
              const SizedBox(width: 25),
              const Text(
                "2000 EGP",
                style: TextStyle(
                    color: Color(0xff239def),
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Review (${product!.rating.rate})",
                style: const TextStyle(
                    color: Color(0xff030051), fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const Spacer(),
              const Icon(
                Icons.add_circle,
                color: Color(0xff004087),
                size: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

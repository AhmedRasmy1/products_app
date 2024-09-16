import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            image: NetworkImage(
              "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            ),
            fit: BoxFit.fill,
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

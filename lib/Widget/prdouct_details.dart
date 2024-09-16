import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Name",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff030051)),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Discrption Product",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff030051)),
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  "EGP 1200",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff030051)),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "2000 EGP",
                  style: TextStyle(
                      color: Color(0xff239def),
                      decoration: TextDecoration.lineThrough),
                )
              ],
            ),
            Row(
              children: [
                Text("Review (4.6)",
                    style: TextStyle(
                        color: Color(0xff030051), fontWeight: FontWeight.w600)),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                Spacer(),
                Icon(
                  Icons.add_circle,
                  color: Color(0xff004087),
                  size: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

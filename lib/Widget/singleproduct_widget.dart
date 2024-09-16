import 'package:flutter/material.dart';

class SingleProductWidget extends StatelessWidget {
  const SingleProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 185,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: const Color(0xffafc6dc)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
                    fit: BoxFit.fill),
              ),
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: const Color.fromARGB(255, 0, 64, 116),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Expanded(
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
                            color: Color(0xff030051),
                            fontWeight: FontWeight.w600)),
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
          ))
        ],
      ),
    );
  }
}

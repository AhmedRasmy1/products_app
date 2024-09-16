import 'dart:convert';

import 'package:products_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetProducts {
  Future<List<ProductModel>> getAllProducts() async {
    Uri url = Uri.parse("https://fakestoreapi.com/products");
    http.Response response = await http.get(url);

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> products = [];
    if (response.statusCode == 200) {
      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
    }

    return products;
  }
}

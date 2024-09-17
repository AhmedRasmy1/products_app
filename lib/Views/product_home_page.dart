import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_app/Cubit/product_cubit/product_cubit.dart';
import 'package:products_app/Widget/singleProduct_widget.dart';

class ProductHomePage extends StatelessWidget {
  const ProductHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductCubit>(context).getProducts();
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
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductSuccess) {
              final product = state.products;
              if (product.isEmpty) {
                return const Center(child: Text("No products available"));
              }
              return GridView.builder(
                itemCount: product.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 19,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return SingleProductWidget(product: product[index]);
                },
              );
            } else if (state is ProductFailure) {
              return Center(child: Text(state.errMessage));
            } else {
              return const Center(child: Text("Something went wrong"));
            }
          },
        ),
      ),
    );
  }
}

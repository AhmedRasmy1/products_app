import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:products_app/Cubit/product_cubit/product_cubit.dart';
import 'package:products_app/Views/product_home_page.dart';

void main() {
  runApp(const ProductsApp());
}

class ProductsApp extends StatelessWidget {
  const ProductsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProductCubit(),
        child: const ProductHomePage(),
      ),
      title: 'Products App',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}

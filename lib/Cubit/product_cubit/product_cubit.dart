import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:products_app/models/product_model.dart';
import 'package:products_app/services/get_products.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void getProducts() async {
    try {
      emit(ProductLoading());
      List<ProductModel> products = await GetProducts().getAllProducts();
      emit(ProductSuccess(products: products));
    } on Exception catch (e) {
      emit(ProductFailure(errMessage: e.toString()));
    }
  }
}

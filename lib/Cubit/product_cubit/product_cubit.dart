import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:products_app/models/product_model.dart';

part 'product_state.dart';

class ProductCubitCubit extends Cubit<ProductCubitState> {
  ProductCubitCubit() : super(ProductCubitInitial());
}

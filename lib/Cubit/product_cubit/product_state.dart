part of 'product_cubit.dart';

@immutable
sealed class ProductCubitState {}

final class ProductCubitInitial extends ProductCubitState {}

final class ProductLoading extends ProductCubitState {}

final class ProductSuccess extends ProductCubitState {
  final List<ProductModel> products;

  ProductSuccess({required this.products});
}

final class ProductFailure extends ProductCubitState {
  final String errMessage;

  ProductFailure({required this.errMessage});
}
